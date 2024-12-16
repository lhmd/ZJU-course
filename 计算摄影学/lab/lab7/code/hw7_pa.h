#ifndef HW8_PA_H
#define HW8_PA_H

#include <vector>
#include <opencv2/opencv.hpp>
using namespace cv;

class CylindricalPanorama {
public:
	virtual bool makePanorama(
		std::vector<cv::Mat>& img_vec, cv::Mat& img_out, double f) = 0;
};

#endif