#include <opencv2/opencv.hpp>
#define EUCLIDEAN_DISTANCE(x1, y1, x2, y2) (sqrt(pow((x2) - (x1), 2) + pow((y2) - (y1), 2)))
constexpr auto w = 5;
using namespace cv;

// 计算高斯函数
double gaussian(double sigma, double x) {
	return exp(-pow(x, 2) / (2 * pow(sigma, 2))) / (sigma*pow(2 * acos(double(-1)), 0.5));
}

// 计算双边滤波器的权重
double wp_func(Mat &src, int x, int y, double sigma_s, double sigma_r, int c, bool is_wp) {
	double wp = 0;
	for (int i = x - w; i < x + w + 1; ++i) {
		for (int j = y - w; j < y + w + 1; ++j) {
			double dist = EUCLIDEAN_DISTANCE(i, j, x, y);
			double light = abs(src.at<Vec3b>(x, y)[c] - src.at<Vec3b>(i, j)[c]);
			// 如果 is_wp 为 true，则计算空间权重，否则计算像素权重
			if (is_wp) wp += gaussian(sigma_s, dist) * gaussian(sigma_r, light);
			else wp += gaussian(sigma_s, dist) * gaussian(sigma_r, light) * src.at<Vec3b>(i, j)[c];
		}
	}
	return wp;
}

int main(int argc, char* argv[]) {

	if (argc != 5) {
		std::cout << "[ERROR]: Type error of format." << std::endl << "[HELP]:" << std::endl << "BilateralFilter <input-image> <output-image> <sigma-s> <sigma-r>" << std::endl;
		exit(1);
	}

	String input = argv[1];
	String output = argv[2];
	double sigma_s = atof(argv[3]), sigma_r = atof(argv[4]);

	Mat src = imread(input);
	Mat dst = imread(input);
	Mat tmp;

	// 复制边界
	copyMakeBorder(src, tmp, w, w, w, w, BORDER_REPLICATE);

	// 遍历图像，对每个像素进行滤波
	for (int i = w; i < src.rows + w; ++i) {
		for (int j = w; j < src.cols + w; ++j) {
			for (int c = 0; c < 3; c++) {
				double wp = wp_func(tmp, i, j, sigma_s, sigma_r, c, true);
				double sum = wp_func(tmp, i, j, sigma_s, sigma_r, c, false);
				dst.at<Vec3b>(i - w, j - w)[c] = (uchar)(sum / wp);
			}
		}
	}

	imshow("BilateralFilter", dst);

	imwrite(output, dst);

	waitKey(0);
	destroyWindow("BilateralFilter");
	return 0;
}