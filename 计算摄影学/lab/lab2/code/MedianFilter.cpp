#include <opencv2/opencv.hpp>
#include <algorithm>
using namespace cv;

int main(int argc, char* argv[]) {

	// 判断参数个数是否正确
	if (argc != 5) {
		std::cout << "[ERROR]: Type error of format." << std::endl << "[HELP]:" << std::endl << "MedianFilter <input-image> <output-image> <w> <h>" << std::endl;
		exit(1);
	}

	// 读取参数
	String input = argv[1];
	String output = argv[2];
	int w = atoi(argv[3]), h = atoi(argv[4]);

	int wsize = 2 * w + 1, hsize = 2 * h + 1;


	Mat src = imread(input);
	Mat dst = imread(input);
	Mat tmp;

	std::vector<int> kernel(wsize * hsize, 0);
	copyMakeBorder(src, tmp, h, h, w, w, BORDER_REPLICATE);
	// 遍历图像，对每个像素进行滤波
	for (int i = h; i < src.rows + h; i++) {
		for (int j = w; j < src.cols + w; j++)
		{
			for (int c = 0; c < 3; c++)
			{
				for (int m = 0; m < wsize*hsize; m++) {
					// 将像素值存入 kernel
					kernel[m] = tmp.ptr<Vec3b>(i - h + m / wsize, j - w + m % wsize)->val[c];
				}
				std::sort(kernel.begin(), kernel.end());

				dst.ptr<Vec3b>(i - h, j - w)->val[c] = kernel[(wsize*hsize) / 2];
			}
		}
	}

	imshow("MedianFilter", dst);

	imwrite(output, dst);

	waitKey(0);
	destroyWindow("MedianFilter");
	return 0;
}