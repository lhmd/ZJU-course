#include "Panorama.h"
#include <filesystem>

using namespace cv;

void stitchImages(const std::string &folder_name, const std::string &output_name) {
    double f;
    std::ifstream fin(folder_name + "K.txt");
    fin >> f;
    fin.close();
    Panorama6034 pano(f);
    std::vector<Mat> images = pano.readImagesFromFolder(folder_name);
    Mat img_out;
    pano.makePanorama(images, img_out, f);
    imwrite(output_name, img_out);
}

int main() {
    stitchImages("../panorama-data1/", "panorama1.jpg");
    stitchImages("../panorama-data2/", "panorama2.jpg");
    return 0;
}
