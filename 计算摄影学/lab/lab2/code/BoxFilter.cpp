#include <opencv2/opencv.hpp>
using namespace cv;

int main(int argc, char* argv[]) {

	// 判断参数个数是否正确
	if (argc != 5) {
		std::cout << "[ERROR]: Type error of format." << std::endl << "[HELP]:" << std::endl << "BoxFilter <input-image> <output-image> <w> <h>" << std::endl;
		exit(1);
	}

	// 读取参数
	String input = argv[1];
	String output = argv[2];
	int w = atoi(argv[3]), h = atoi(argv[4]);

	// 创建核
	Mat kernel(2 * w + 1, 2 * h + 1, CV_32F, Scalar(1.0 / ((2 * w + 1)*(2 * h + 1))));

	Mat src = imread(input);
	Mat dst = imread(input);

	// 进行滤波
	filter2D(src, dst, src.depth(), kernel);

	imshow("BoxFilter", dst);

	imwrite(output, dst);

	waitKey(0);
	destroyWindow("BoxFilter");
	return 0;
}