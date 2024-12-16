#include "Panorama.h"

std::vector<Mat> Panorama6034::readImagesFromFolder(const std::string& folderPath) {
    std::vector<Mat> images;
    for (const auto& entry : std::filesystem::directory_iterator(folderPath)) {
        std::string filePath = entry.path().string();

        if (std::filesystem::is_regular_file(entry) && filePath != "." && filePath != "..") {
            Mat image = imread(filePath);
            if (!image.empty()) {
                images.push_back(image);
            }
        }
    }
    return images;
}

Mat Panorama6034::cylindricalWarp(const Mat& image, double f) const {
    int width = image.cols;
    int height = image.rows;
    int cx = (width - 1) / 2;
    int cy = (height - 1) / 2;
    int max_x = (int)(r * atan(cx / f));
    int max_y = (int)(r * cy / f);
    Mat result = Mat::zeros(max_y * 2 + 1, max_x * 2 + 1, CV_8UC3);

    // 遍历球面坐标系上的每一个点而非图像上的每一个点
    for (int i = 0; i < max_x * 2 + 1; ++i) {
        for (int j = 0; j < max_y * 2 + 1; ++j) {
            double x = f * tan((i - max_x) / r);
            double y = (j - max_y) / r * sqrt(x * x + f * f);
            x += cx;
            y += cy;
            if (x >= 0 && x < width && y >= 0 && y < height) {
                result.at<Vec3b>(j, i) = image.at<Vec3b>((int)y, (int)x);
            }
        }
    }
    return result;
}

bool Panorama6034::makePanorama(std::vector<cv::Mat>& img_vec, cv::Mat& img_out, double f) {
    if (img_vec.empty()) {
        return false;
    }
    std::vector<Mat> warped_images;
    for (const auto& img : img_vec) {
        warped_images.push_back(cylindricalWarp(img, f));
    }
    // 从中间开始拼接
    int mid = (img_vec.size() - 1) / 2;
    img_out = warped_images[mid];
    for (int i = mid - 1; i >= 0; --i) {
        img_out = mergeImages(img_out, warped_images[i]);
        if (img_out.empty()) return false;
    }
    for (int i = mid + 1; i < img_vec.size(); ++i) {
        img_out = mergeImages(img_out, warped_images[i]);
        if (img_out.empty()) return false;
    }

    return true;
}

Mat Panorama6034::mergeImages(Mat &img1, Mat &img2) {
    Mat H = findH(img1, img2);
    if (H.empty()) {
        return Mat();
    }

    // 计算拼接后的图像大小
    std::vector<Point2f> corners(4);
    corners[0] = Point2f(0, 0);
    corners[1] = Point2f((float)img2.cols - 1, 0);
    corners[2] = Point2f((float)img2.cols - 1, (float)img2.rows - 1);
    corners[3] = Point2f(0, (float)img2.rows - 1);
    perspectiveTransform(corners, corners, H);
    int right = (int)std::max(corners[1].x, corners[2].x);
    right = std::max(right + 1, img1.cols);
    int down = (int)std::max(corners[2].y, corners[3].y);
    down = std::max(down + 1, img1.rows);
    int left = (int)std::min(corners[0].x, corners[3].x);
    left = std::min(left, 0);
    int up = (int)std::min(corners[0].y, corners[1].y);
    up = std::min(up, 0);

    int result_col = right - left;
    int result_row = down - up;

    Mat result = Mat::zeros(result_row, result_col, CV_8UC3);

//    warpPerspective(img1, result, H, Size(result_col, result_row));
    // 逆变换防止空洞
    std::vector<Point2f> p(1);
    Mat reverse_H = H.inv();
    for (int i = 0; i < result_row; ++i) {
        for (int j = 0; j < result_col; ++j) {
            if (result.at<Vec3b>(i, j) != Vec3b(0, 0, 0)) {
                continue;
            }
            int j_trans = j + left;
            int i_trans = i + up;
            p[0] = Point2f(j_trans, i_trans);
            perspectiveTransform(p, p, reverse_H);
            int x = (int)p[0].x;
            int y = (int)p[0].y;
            if (x >= 0 && x < img2.cols && y >= 0 && y < img2.rows && img2.at<Vec3b>(y, x) != Vec3b(0, 0, 0)) {
                result.at<Vec3b>(i, j) = img2.at<Vec3b>(y, x);
            }
        }
    }
    for (int i = 0; i < img1.rows; ++i) {
        for (int j = 0; j < img1.cols; ++j) {
            Vec3b img1_pixel = img1.at<Vec3b>(i, j);
            Vec3b result_pixel = result.at<Vec3b>(i - up, j - left);
            if (norm(img1_pixel) > norm(result_pixel) ) {
                result.at<Vec3b>(i - up, j - left) = img1_pixel;
            }
        }
    }
    return result;
}

Mat Panorama6034::findH(const Mat &img1, const Mat &img2) {
    // SIFT特征提取
    Ptr<SIFT> sift = SIFT::create();
    std::vector<KeyPoint> keypoints1, keypoints2;
    Mat descriptors1, descriptors2;
    sift->detectAndCompute(img1, Mat(), keypoints1, descriptors1);
    sift->detectAndCompute(img2, Mat(), keypoints2, descriptors2);

    BFMatcher matcher;
    std::vector<DMatch> matches;
    matcher.match(descriptors1, descriptors2, matches);

    std::vector<DMatch> good_matches;
    float min_dist = matches[0].distance, max_dist = matches[0].distance;
    for (const auto & match : matches) {
        min_dist = std::min(min_dist, match.distance);
        max_dist = std::max(max_dist, match.distance);
    }
    // 筛选匹配点
    for (const auto & match : matches) {
        if (match.distance <= std::max(2 * (double)min_dist, 0.5 * max_dist)) {
            good_matches.push_back(match);
        }
    }
    if (good_matches.size() < 4) {
        return Mat();
    }
//    std::sort(matches.begin(), matches.end(), [](const DMatch & a, const DMatch & b) { return a.distance < b.distance; });
//    for (int i = 0; i < 300 && i < matches.size(); ++i) {
//        good_matches.push_back(matches[i]);
//    }

//    Mat img_matches;
//    drawMatches(img1, keypoints1, img2, keypoints2, good_matches, img_matches);
//    imshow("matches", img_matches);
//    waitKey(0);

    std::vector<Point2f> points1, points2;
    for (auto & good_match : good_matches) {
        points1.push_back(keypoints1[good_match.queryIdx].pt);
        points2.push_back(keypoints2[good_match.trainIdx].pt);
    }

    Mat H = findHomography(points2, points1, RANSAC);
    return H;
}
