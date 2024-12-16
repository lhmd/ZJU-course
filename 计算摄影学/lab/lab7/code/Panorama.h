#pragma once
#include "hw7_pa.h"
#include <string>
#include <filesystem>
class Panorama6034 : public CylindricalPanorama {
	double r;
public:
    explicit Panorama6034(double r) : r(r) {}
    std::vector<Mat> readImagesFromFolder(const std::string& folderPath);
    bool makePanorama(std::vector<cv::Mat>& img_vec, cv::Mat& img_out, double f) override;
    [[nodiscard]] Mat cylindricalWarp(const Mat& image, double f) const;
    static Mat mergeImages(Mat& img1, Mat& img2);
    static Mat findH(const Mat& img1, const Mat& img2);
};
