#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <time.h>

typedef struct {
    double real;
    double imag;
} Complex;

Complex complex_add(Complex a, Complex b) {
    return (Complex){a.real + b.real, a.imag + b.imag};
}

Complex complex_sub(Complex a, Complex b) {
    return (Complex){a.real - b.real, a.imag - b.imag};
}

Complex complex_mult(Complex a, Complex b) {
    return (Complex){a.real * b.real - a.imag * b.imag, a.real * b.imag + a.imag * b.real};
}

Complex complex_scale(Complex a, double scalar) {
    return (Complex){a.real * scalar, a.imag * scalar};
}

double complex_abs_squared(Complex a) {
    return a.real * a.real + a.imag * a.imag;
}

typedef struct {
    Complex state[4];
} TwoQubitState;

TwoQubitState init_state(double c00_r, double c00_i, double c01_r, double c01_i,
                         double c10_r, double c10_i, double c11_r, double c11_i) {
    TwoQubitState state;
    state.state[0] = (Complex){c00_r, c00_i};
    state.state[1] = (Complex){c01_r, c01_i};
    state.state[2] = (Complex){c10_r, c10_i};
    state.state[3] = (Complex){c11_r, c11_i};
    
    return state;
}

int is_normalized(TwoQubitState state) {
    double sum = 0.0;
    
    for (int i = 0; i < 4; i++) {
        sum += complex_abs_squared(state.state[i]);
    }
    
    return fabs(sum - 1.0) < 1e-10;
}

void apply_matrix(TwoQubitState *state, Complex matrix[4][4]) {
    TwoQubitState new_state = {{0, 0}, {0, 0}, {0, 0}, {0, 0}};
    
    for (int i = 0; i < 4; i++) {
        for (int j = 0; j < 4; j++) {
            new_state.state[i] = complex_add(new_state.state[i], 
                                            complex_mult(matrix[i][j], state->state[j]));
        }
    }
    
    *state = new_state;
}

void apply_cnot(TwoQubitState *state) {
    Complex cnot[4][4] = {
        {{1, 0}, {0, 0}, {0, 0}, {0, 0}},
        {{0, 0}, {1, 0}, {0, 0}, {0, 0}},
        {{0, 0}, {0, 0}, {0, 0}, {1, 0}},
        {{0, 0}, {0, 0}, {1, 0}, {0, 0}}
    };
    
    apply_matrix(state, cnot);
}

void apply_hadamard_q1(TwoQubitState *state) {
    double sqrt2 = 1.0 / sqrt(2);
    Complex h[2][2] = {{{sqrt2, 0}, {sqrt2, 0}}, {{sqrt2, 0}, {-sqrt2, 0}}};
    Complex h_tensor_i[4][4] = {{{0, 0}, {0, 0}, {0, 0}, {0, 0}},
                               {{0, 0}, {0, 0}, {0, 0}, {0, 0}},
                               {{0, 0}, {0, 0}, {0, 0}, {0, 0}},
                               {{0, 0}, {0, 0}, {0, 0}, {0, 0}}};
    for (int i = 0; i < 2; i++) {
        for (int j = 0; j < 2; j++) {
            h_tensor_i[i][j] = h[i][j];
            h_tensor_i[i + 2][j + 2] = h[i][j];
        }
    }
    
    apply_matrix(state, h_tensor_i);
}

void apply_x_q2(TwoQubitState *state) {
    Complex x[2][2] = {{{0, 0}, {1, 0}}, {{1, 0}, {0, 0}}};
    Complex i_tensor_x[4][4] = {{{0, 0}, {0, 0}, {0, 0}, {0, 0}},
                               {{0, 0}, {0, 0}, {0, 0}, {0, 0}},
                               {{0, 0}, {0, 0}, {0, 0}, {0, 0}},
                               {{0, 0}, {0, 0}, {0, 0}, {0, 0}}};
    
    for (int i = 0; i < 2; i++) {
        for (int j = 0; j < 2; j++) {
            i_tensor_x[i][j + 2*i] = x[i][j];
            i_tensor_x[i + 2][j + 2*(i + 1)] = x[i][j];
        }
    }
    
    apply_matrix(state, i_tensor_x);
}

void apply_z_q1(TwoQubitState *state) {
    Complex z[2][2] = {{{1, 0}, {0, 0}}, {{0, 0}, {-1, 0}}};
    Complex z_tensor_i[4][4] = {{{0, 0}, {0, 0}, {0, 0}, {0, 0}},
                               {{0, 0}, {0, 0}, {0, 0}, {0, 0}},
                               {{0, 0}, {0, 0}, {0, 0}, {0, 0}},
                               {{0, 0}, {0, 0}, {0, 0}, {0, 0}}};
    
    for (int i = 0; i < 2; i++) {
        for (int j = 0; j < 2; j++) {
            z_tensor_i[i][j] = z[i][j];
            z_tensor_i[i + 2][j + 2] = z[i][j];
        }
    }
    
    apply_matrix(state, z_tensor_i);
}

void measure_state(TwoQubitState state, int *q1, int *q2) {
    double probs[4];
    
    for (int i = 0; i < 4; i++) {
        probs[i] = complex_abs_squared(state.state[i]);
    }
    
    double r = (double)rand() / RAND_MAX;
    double sum = 0.0;
    
    for (int i = 0; i < 4; i++) {
        sum += probs[i];
        if (r <= sum) {
            *q1 = (i & 2) >> 1;
            *q2 = i & 1;
            return;
        }
    }
    
    *q1 = 1; *q2 = 1;
}

void print_state(TwoQubitState state) {
    const char* basis[4] = {"|00>", "|01>", "|10>", "|11>"};
    for (int i = 0; i < 4; i++) {
        printf("%s: %.3f + %.3fi (prob: %.3f)\n", basis[i], 
               state.state[i].real, state.state[i].imag, complex_abs_squared(state.state[i]));
    }
    printf("Normalized: %s\n", is_normalized(state) ? "Yes" : "No");
}

int main() {
    srand(time(NULL));

    printf("Example 1: Generate entangled state (|00> + |11>)/sqrt(2)\n");
    TwoQubitState state1 = init_state(1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0);
    
    apply_hadamard_q1(&state1);
    apply_cnot(&state1);
    printf("Final state:\n");
    print_state(state1);
    int q1, q2;
    printf("Measurement (10 trials):\n");
    
    for (int i = 0; i < 10; i++) {
        measure_state(state1, &q1, &q2);
        printf("Trial %d: q1=%d, q2=%d\n", i + 1, q1, q2);
    }

    printf("\nExample 2: Circuit with X, H, CNOT, Z\n");
    TwoQubitState state2 = init_state(1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0);
    
    apply_x_q2(&state2);
    apply_hadamard_q1(&state2);
    apply_cnot(&state2);
    apply_z_q1(&state2);
    printf("Final state:\n");
    print_state(state2);
    printf("Measurement (10 trials):\n");
    
    for (int i = 0; i < 10; i++) {
        measure_state(state2, &q1, &q2);
        printf("Trial %d: q1=%d, q2=%d\n", i + 1, q1, q2);
    }

    return 0;
}
