#ifndef SOLVER
#define SOLVER
#include "hw3_gn.h"
#include <opencv2/opencv.hpp>

class Solver6034 : public GaussNewtonSolver {
public:
	double solve(
		ResidualFunction *f, // 目标函数
		double *X,           // 输入作为初值，输出作为结果
		GaussNewtonParams param, // 优化参数
		GaussNewtonReport *report // 优化结果报告
	);
};

#endif
