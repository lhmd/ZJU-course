#include "Ellipse.h"
#include "solver.h"
#include <iostream>

void readData(cv::Mat &data) {
    // 读取txt文件内容
    std::ifstream file("ellipse753.txt");
    std::string line;
    std::vector<std::vector<double>> data_vec;
    while (std::getline(file, line)) {
        std::istringstream iss(line);
        std::vector<double> data_line;
        double num;
        while (iss >> num) {
            data_line.push_back(num);
        }
        data_vec.push_back(data_line);
    }
    file.close();
    // 将数据转换为cv::Mat
    data = cv::Mat(data_vec.size(), data_vec[0].size(), CV_64F);
    for (int i = 0; i < data.rows; i++) {
        for (int j = 0; j < data.cols; j++) {
            data.at<double>(i, j) = data_vec[i][j];
        }
    }
}

int main() {
    cv::Mat data;
    readData(data);
    Ellipse ellipse(data);
	Solver6034 solver;
    double X[3] = {1, 1, 1};
    GaussNewtonParams param;
    GaussNewtonReport report;
    solver.solve(&ellipse, X, param, &report);
    std::cout << "X = [" << X[0] << ", " << X[1] << ", " << X[2] << "]" << std::endl;
    return 0;
}