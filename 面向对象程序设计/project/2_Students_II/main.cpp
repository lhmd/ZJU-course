#include<iostream>
#include<vector>
#include<string>
#include<algorithm>
#include<map>
// Macro definitions represent the highest and lowest scores for the course
#define max_score 5
#define min_score 1
// Global variable, Save the names of all courses and the number of students who have chosen these courses
std::map<std::string, int> course;
std::map<std::string, int>::iterator iter;
// Global variable, defined with information entered for several students
int stu_num = 0;

class student {
    private:
        std::string name;
        std::map<std::string, int> score;
        double average;
    public:
        bool create() {
            std::string str;
            std::cin >> str;
            // Judge whether to end the input
            if(str == "#")return true;
            // Use the resulting string as the student name
            this->name = str;
            int cnt = 0;
            double sum = 0;
            std::string course_name;
            int course_score;
            // Cycle in course names and scores
            while(std::cin >> course_name >> course_score) {
                score[course_name] = course_score;
                course[course_name]++;
                cnt++;
                sum += course_score;
                // End the loop when read a '\n'
                if(std::cin.get() == '\n') break;
            }
            // Calculate the average value
            this->average = (double)sum/cnt;
            return false;
        };
        void print(int i) {
            std::cout << i+1 << '\t' << this->name << '\t';
            bool flag = false;
            // Cycle through all course names to find courses that have already been taken
            for(iter = course.begin(); iter != course.end(); iter++) {
                if(score[iter->first] == 0) std::cout << "NULL" << '\t';
                else {std::cout << score[iter->first] << '\t';flag = true;}
            }
            if(flag == true)std::cout << this->average << std::endl;
            else std::cout << "NULL" << std::endl;
        };
        int getScore(std::string course_name) {return this->score[course_name];}
};

class student_table {
    private:
        // Record data for all students
        std::vector<student> students;
        std::map<std::string, int> min, max;
        std::map<std::string, double> sum;
    public:
        void getStudents() {
            // read in data
            while(true) {
                student temp;
                if(temp.create()) break;
                students.push_back(temp);
                stu_num++;
            }
        }
        // Calculate the average, highest, and lowest scores for all students
        void calc() {
            min = course;
            for(iter = course.begin(); iter != course.end(); iter++) {
                min[iter->first] = 6;
                max[iter->first] = 0;
                sum[iter->first] = 0;
                for(int i = 0; i < stu_num; i++){
                    int thisScore = students[i].getScore(iter->first);
                    if(thisScore != 0){
                        min[iter->first] = std::min(min[iter->first], thisScore);
                        max[iter->first] = std::max(max[iter->first], thisScore);
                        sum[iter->first] += (double)thisScore;
                    }
                }
            }
        }
        // Output student scores and statistics
        void printStudents() {
            std::cout << "no\t" << "name\t";
            // Traverse all obtained course names
            for(iter = course.begin(); iter != course.end(); iter++) {
                std::cout << iter->first << '\t';
            }
            std::cout << "average\t" << std::endl;
            for(int i = 0; i < stu_num; ++i) students[i].print(i);
            std::cout << "\taverage\t";
            calc();
            for(iter = course.begin(); iter != course.end(); iter++) {
                if(iter->second == 0) std::cout << "NULL" << "\t";
                else std::cout << sum[iter->first]/iter->second << "\t";
            }
            std::cout << std::endl << "\tmin\t";
            for(iter = course.begin(); iter != course.end(); iter++) {
                if(iter->second == 0) std::cout << "NULL" << "\t";
                else std::cout << min[iter->first] << "\t";
            }
            std::cout << std::endl << "\tmax\t";
            for(iter = course.begin(); iter != course.end(); iter++) {
                if(iter->second == 0) std::cout << "NULL" << "\t";
                else std::cout << max[iter->first] << "\t";
            }
        }
};

int main() {
    student_table Table;
    std::cout << "Please enter '#' to stop you input" << std::endl;
    // input
    Table.getStudents();
    // output
    Table.printStudents();
    return 0;
}