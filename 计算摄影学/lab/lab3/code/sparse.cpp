#include "sparse.h"
double Sparse::at(int row, int col) const {
	int start = rowOffset[row];
	int end = rowOffset[row + 1];
	for (int i = start; i < end; i++) {
		if (colIndex[i] == col) {
			return val[i];
		}
	}
	return 0;
}

void Sparse::insert(double val, int row, int col) {
	int start = rowOffset[row];
	int end = rowOffset[row + 1];
	for (int i = start; i < end; i++) {
		if (colIndex[i] == col) {
			this->val[i] = val;
			return;
		}
	}
	this->val.insert(this->val.begin() + start, val);
	colIndex.insert(colIndex.begin() + start, col);
	for (int i = row + 1; i <= rowNum; i++) {
		rowOffset[i]++;
	}
	nzeroNum++;
}

void Sparse::initializeFromVector(const Veci& rows, const Veci& cols, const Vecd& vals) {
	this->rowNum = *std::max_element(rows.begin(), rows.end()) + 1;
	this->colNum = *std::max_element(cols.begin(), cols.end()) + 1;
	int zeroNum = 0;
	for (int i = 0; i < vals.size(); i++) {
		if (fabs(vals[i]) < epsilon) {
			zeroNum++;
		}
	}
	nzeroNum = vals.size() - zeroNum;
	val.resize(nzeroNum);
	colIndex.resize(nzeroNum);
	rowOffset.resize(this->rowNum + 1);
	std::fill(rowOffset.begin(), rowOffset.end(), 0);
	for (int i = 0, j = 0; i < nzeroNum; i++, j++) {
		if (fabs(vals[j]) > epsilon) {
			val[i] = vals[j];
			colIndex[i] = cols[j];
			rowOffset[rows[j] + 1]++;
		}
		else {
			i--;
		}
	}
	for (int i = 1; i <= this->rowNum; i++) {
		rowOffset[i] += rowOffset[i - 1];
	}
}
