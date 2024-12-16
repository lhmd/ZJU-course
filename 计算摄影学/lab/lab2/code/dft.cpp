#include <opencv2/opencv.hpp>
using namespace cv;

// rearranges the outputs of dft by moving the zero-frequency component to the center of the array.
void fftshift(const Mat &src, Mat &dst) {
	dst.create(src.size(), src.type());
	int rows = src.rows, cols = src.cols;
	Rect roiTopBand, roiBottomBand, roiLeftBand, roiRightBand;
    // 选择区域
	if (rows % 2 == 0) {
		roiTopBand = Rect(0, 0, cols, rows / 2);
		roiBottomBand = Rect(0, rows / 2, cols, rows / 2);
	}
	else {
		roiTopBand = Rect(0, 0, cols, rows / 2 + 1);
		roiBottomBand = Rect(0, rows / 2 + 1, cols, rows / 2);
	}
	if (cols % 2 == 0) {
		roiLeftBand = Rect(0, 0, cols / 2, rows);
		roiRightBand = Rect(cols / 2, 0, cols / 2, rows);
	}
	else {
		roiLeftBand = Rect(0, 0, cols / 2 + 1, rows);
		roiRightBand = Rect(cols / 2 + 1, 0, cols / 2, rows);
	}
	Mat srcTopBand = src(roiTopBand);
	Mat dstTopBand = dst(roiTopBand);
	Mat srcBottomBand = src(roiBottomBand);
	Mat dstBottomBand = dst(roiBottomBand);
	Mat srcLeftBand = src(roiLeftBand);
	Mat dstLeftBand = dst(roiLeftBand);
	Mat srcRightBand = src(roiRightBand);
	Mat dstRightBand = dst(roiRightBand);
	flip(srcTopBand, dstTopBand, 0);
	flip(srcBottomBand, dstBottomBand, 0);
	flip(dst, dst, 0);
	flip(srcLeftBand, dstLeftBand, 1);
	flip(srcRightBand, dstRightBand, 1);
	flip(dst, dst, 1);
}

Mat run(Mat &I) {
	Mat J(I.size(), CV_32FC2);
	dft(I, J, DFT_COMPLEX_OUTPUT);
	fftshift(J, J);

	Mat Mag;
	std::vector<Mat> K;
	split(J, K); // 将实数和虚数部分分解到 K[0] 和 K[1] 
	pow(K[0], 2, K[0]); // 计算平方 
	pow(K[1], 2, K[1]);
	Mag = K[0] + K[1]; // 两个分量的平方和  

	Mat logMag;
	log(Mag + 1, logMag);
	normalize(logMag, logMag, 1.0, 0.0, NORM_MINMAX);

	return logMag;
}

int main(int argc, char* argv[]) {

    // 原矩形
	Mat I(512, 512, CV_32FC1);
	I = 0;
	I(Rect(256 - 10, 256 - 30, 20, 60)) = 1.0;
	Mat logMag = run(I);

    // 平移后的矩形
	Mat K(512, 512, CV_32FC1);
	K = 0;
	K(Rect(256 + 60, 256 - 30, 20, 60)) = 1.0;
	Mat logMag_trans = run(K);

    // 旋转后的矩形(90度)
	Mat J(512, 512, CV_32FC1);
	J = 0;
	J(Rect(256 - 10, 256 - 30, 60, 20)) = 1.0;
	Mat logMag_rotate = run(J);

    // 缩放后的矩形
	Mat G(512, 512, CV_32FC1);
	G = 0;
	G(Rect(256 - 10, 256 - 30, 80, 100)) = 1.0;
	Mat logMag_resize = run(G);

	imshow("Magnitude", logMag);
	imshow("MagnitudeTrans", logMag_trans);
	imshow("MagnitudeRotate", logMag_rotate);
	imshow("MagnitudeResize", logMag_resize);
	waitKey(0);
	destroyWindow("Magnitude");
	destroyWindow("MagnitudeTrans");
	destroyWindow("MagnitudeRotate");
	destroyWindow("MagnitudeResize");
	return 0;
}