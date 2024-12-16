#ifndef ELLIPSE
#define ELLIPSE
#include "hw3_gn.h"
#include <opencv2/opencv.hpp>

class Ellipse : public ResidualFunction {
private:
    cv::Mat data;
public:
	Ellipse(cv::Mat &data);
    int nR() const;
    int nX() const;
    void eval(double *R, double *J, double *X);
};

#endif