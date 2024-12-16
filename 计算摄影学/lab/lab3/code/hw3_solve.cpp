#include "hw3_solve.h"

Vecd Gauss_Seidel(const Sparse& A, const Vecd& b, double error) {
	int n = b.size();
	Vecd x(n, 0);
	Vecd x_new(n, 0);
	double sum1, sum2;
	double diff;
	do {
		for (int i = 0; i < n; i++) {
			sum1 = 0;
			sum2 = 0;
			for (int j = 0; j < i; j++) {
				sum1 += A.at(i, j) * x_new[j];
			}
			for (int j = i + 1; j < n; j++) {
				sum2 += A.at(i, j) * x[j];
			}
			x_new[i] = (b[i] - sum1 - sum2) / A.at(i, i);
		}
		diff = 0;
		for (int i = 0; i < n; i++) {
			diff += fabs(x_new[i] - x[i]);
		}
		x = x_new;
	} while (diff > error);
	return x;
}

Vecd Conjugate_Gradient(const Sparse& A, const Vecd& b, double error, int kmax) {
	int n = b.size();
	Vecd x(n, 0);
	Vecd x_new(n, 0);
	Vecd r = b;
	Vecd r_new = r;
	Vecd p = r;
	Vecd Ap(n, 0);
	double r_norm;
	double alpha, beta;

	for (int k = 0; k < kmax; ++k) {
		// calculate Ap
		for (int i = 0; i < n; ++i) {
			Ap[i] = 0;
			for (int j = 0; j < n; ++j) {
				Ap[i] += A.at(i, j) * p[j];
			}
		}

		// calculate alpha
		double deno = 0, nume = 0;
		for (int i = 0; i < n; ++i) {
			deno += p[i] * Ap[i];
		}
		for (int i = 0; i < n; ++i) {
			nume += r[i] * r[i];
		}
		alpha = nume / deno;

		// update x
		for (int i = 0; i < n; ++i) {
			x_new[i] = x[i] + alpha * p[i];
		}

		// update r
		for (int i = 0; i < n; ++i) {
			r_new[i] = r[i] - alpha * Ap[i];
		}

		// calculate r_norm
		r_norm = 0;
		for (int i = 0; i < n; ++i) {
			r_norm += r_new[i] * r_new[i];
		}
		if (r_norm < error) {
			return x_new;
		}

		// calculate beta
		beta = 0;
		for (int i = 0; i < n; ++i) {
			beta += r_new[i] * r_new[i];
		}
		beta /= nume;

		// update p
		for (int i = 0; i < n; ++i) {
			p[i] = r_new[i] + beta * p[i];
		}

		x = x_new;
		r = r_new;
	}
	return x;
}
