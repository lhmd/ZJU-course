#pragma once
#ifndef _HW3_SOLVE_H
#define _HW3_SOLVE_H

#include "sparse.h"

/**
 * @brief solve Ax=b with Gauss-Seidel method
 *
 * @param A coefficient matrix
 * @param b label vector (just a nickname)
 * @param error when infinity norm of |x_{k+1} - x_k| < (or <=) error, stop iteration
 * @return x: Vecd, solution of Ax=b
 */
Vecd Gauss_Seidel(const Sparse& A, const Vecd& b, double error);

/**
 * @brief solve Ax=b with conjugate gradient method
 *
 * @param A coefficient matrix
 * @param b label vector (just a nickname)
 * @param error when ||r||_2^2 < (or <=) error, stop iteration. r = b - Ax is the residual
 * @param kmax max iterations
 * @return x: Vecd, solution of Ax=b
 */
Vecd Conjugate_Gradient(const Sparse& A, const Vecd& b, double error, int kmax);

#endif