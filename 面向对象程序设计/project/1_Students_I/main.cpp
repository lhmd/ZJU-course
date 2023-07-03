#include<iostream>
#include<vector>
#include<string>
#include<algorithm>
#define MAX 10

// define a class
class student {
// All variables are set as private variables
private:
    std::string name;
    std::vector<int> score = std::vector<int>(3);
    double average;
// All functions are set as public members
public:
    void create();// store the values of variables
    void print(int i);// print out the variables according to the requirements
    int getScore(int i);// load the values of variables
};

void student::create() {
    std::cin >> this->name >> this->score[0] >> this->score[1] >> this->score[2];// input the values
    this->average = (double)(this->score[0] + this->score[1] + this->score[2])/3;// caculate the average value
}

void student::print(int i) {
    std::cout << i+1 << '\t' << this->name << '\t' << this->score[0] << '\t' << this->score[1] << '\t' << this->score[2] << '\t' << this->average << std::endl;// print out the row
}

int student::getScore(int i) {
    return this->score[i];// load the value and transfer to outside
}

int main() {
    // define the variables
    std::vector<student> students(10);
    std::vector<double> sum(3, 0);// record the sum
    std::vector<int> min(3, 5), max(3, 1);// record maximum and minimum values
    for(int i = 0; i < MAX; ++i) {
        students[i].create();// input the information
        for(int j = 0; j < 3; ++j) {// caculate the result
            int thisScore = students[i].getScore(j);
            min[j] = std::min(min[j], thisScore);
            max[j] = std::max(max[j], thisScore);
            sum[j] += (double)thisScore;
        }
    }
    std::cout << "no\t" << "name\t" << "score1\t" << "score2\t" << "score3\t" << "average\t" << std::endl;
    // output the result
    for(int i = 0; i < MAX; ++i) students[i].print(i);
    std::cout << "\taverage\t" << sum[0]/MAX << "\t" << sum[1]/MAX << "\t" << sum[2]/MAX << "\t" << std::endl;
    std::cout << "\tmin\t" << min[0] << "\t" << min[1] << "\t" << min[2] << "\t" << std::endl;
    std::cout << "\tmax\t" << max[0] << "\t" << max[1] << "\t" << max[2] << "\t" << std::endl;
    return 0;
}
