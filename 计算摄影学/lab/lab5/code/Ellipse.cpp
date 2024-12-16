#include "Ellipse.h"

Ellipse::Ellipse(cv::Mat &data) {
    this->data = data;
}

int Ellipse::nR() const {
    return data.rows;
}

int Ellipse::nX() const {
    return data.cols;
}

void Ellipse::eval(double *R, double *J, double *X) {
    cv::Mat MR(nR(), 1, CV_64F, R);
    cv::Mat MX(nX(), 1, CV_64F, X);
    cv::Mat MJ(nR(), nX(), CV_64F, J);
    cv::Mat TDATA(nR(), nX(), CV_64F);
    
    cv::Mat TX(nR(), nX(), CV_64F);
    cv::repeat(MX.t(), nR(), 1, TX);
    
    TDATA = data.mul(data);
	// 1 - \frac{x^2}{A^2} - \frac{y^2}{B^2} - \frac{z^2}{C^2}
    cv::reduce(TDATA / TX.mul(TX), MR, 1, cv::REDUCE_SUM);
    MR = 1 - MR;

	// \frac{2x^2}{A^3} + \frac{2y^2}{B^3} + \frac{2z^2}{C^3}
    MJ = 2 * TDATA / TX.mul(TX).mul(TX);

}