#pragma once
#ifndef _SPARSE_H
#define _SPARSE_H

#include <iostream>
#include <vector>
#include <algorithm>
#include <cmath>
/* include other libraries if you need */

typedef std::vector<double> Vecd;
typedef std::vector<int> Veci;

/**
 * @brief Sparse Matrix Class.
 * Assume:
 * 1. number of nonzero elements less than int
 * 2. every element is under the precision of 1e-10
 *    (if fabs(x) < 1e-10, then x is considered as 0)
*/
class Sparse {
private:
	const double epsilon = 1e-10;   //  precision

	/* define other private member variables and functions if you need */
	int rowNum, colNum;
	int nzeroNum;
	Vecd val;
	Veci colIndex, rowOffset;

public:
	/* define constructors and destructor if you need */
	Sparse() {}
	~Sparse() {}

	/**
	 * @brief read the element at Matrix[row][column]
	 *
	 * @param row row index, starts from 0, like 0, 1, 2, 3 ...
	 * @param col column index, starts from 0, like 0, 1, 2, 3 ...
	*/
	double at(int row, int col) const;

	/**
	 * @brief insert / modify the element at Matrix[row][column]
	 *
	 * @param val value to insert / modify
	 * @param row row indices, starts from 0, like 0, 1, 2, 3 ...
	 * @param col column indices, starts from 0, like 0, 1, 2, 3 ...
	*/
	void insert(double val, int row, int col);

	/**
	 * @brief initialize the sparse matrix with 3 vectors (equal lengths)
	 *
	 * @param rows for row indices
	 * @param cols for column indices
	 * @param vals for values. vals[i] = Matrix[rows[i]][cols[i]]
	*/
	void initializeFromVector(const Veci& rows, const Veci& cols, const Vecd& vals);

	/* define other public member variables and functions if you need */

};

#endif