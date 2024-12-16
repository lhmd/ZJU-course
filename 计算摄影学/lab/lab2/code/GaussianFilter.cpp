#include <opencv2/opencv.hpp>
using namespace cv;

int main(int argc, char* argv[]) {

	// 判断参数个数是否正确
	if (argc != 4) {
		std::cout << "[ERROR]: Type error of format." << std::endl << "[HELP]:" << std::endl << "GaussianFilter <input-image> <output-image> <sigma>" << std::endl;
		exit(1);
	}

	String input = argv[1];
	String output = argv[2];
	double sigma = atof(argv[3]);

	// 创建核
	int size = 2 * cvFloor(5 * sigma) + 1;
	Mat kernel(size, size, CV_64F);
	int center = size / 2;
	double sum = 0;

	// 计算高斯核
	for (int i = 0; i < size; ++i) {
		int x = (i - center) * (i - center);
		for (int j = 0; j < size; ++j) {
			int y = (j - center) * (j - center);
			double val = exp(-(x + y) / (2 * sigma*sigma));
			kernel.at<double>(i, j) = val;
			sum += val;
		}
	}

	// 归一化
	kernel = kernel / sum;


	Mat src = imread(input);
	Mat dst = imread(input);

	filter2D(src, dst, src.depth(), kernel);

	imshow("GaussianFilter", dst);

	imwrite(output, dst);

	waitKey(0);
	destroyWindow("GaussianFilter");
	return 0;
}