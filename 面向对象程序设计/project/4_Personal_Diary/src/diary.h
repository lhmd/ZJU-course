#ifndef DIARY_H
#define DIARY_H
#include<iostream>
#include<fstream>
#include<string>
#include<vector>
#include<ctime>
#define PATH "MyDiary.txt"
using namespace std;

class Diary {
private:
    string date;
    vector<string> text;
public:
    Diary();
    bool setDate(string mydate);
    void addText(string mytext);
    string readDate();
    int textSize();
    string readText(int i);
    void free();
};
#endif