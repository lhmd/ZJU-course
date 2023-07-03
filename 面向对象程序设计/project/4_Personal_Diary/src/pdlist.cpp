#include "diary.h"

int main(int argc, char* argv[]) {
    // open the diary file
   ifstream fin(PATH);
    if(fin.fail()) {
        cout << "File cannot open." << endl;
        return -1;
    }
    // Back up the current state of cin for easy recovery later
    streambuf *cinbackup;
    cinbackup = cin.rdbuf(fin.rdbuf());
    vector<Diary> MyDiary;
    string temp;
    // Read the diary file and store it in a vector
    while(!cin.eof()) {
        do {
            cin >> temp;
        } while (temp == "" && !cin.eof());
        if(cin.eof()) break;
        Diary tempDiary;
        tempDiary.setDate(temp);
        while(temp != ".") {
            getline(cin, temp);
            if(temp == "") continue;
            if(temp == "." || cin.eof()) break;
            tempDiary.addText(temp);
        }
        tempDiary.addText(".");
        MyDiary.push_back(tempDiary);
    }
    fin.close();
    // recover cin
    cin.rdbuf(cinbackup);

    bool isExist = false;
    // If there is no argument, print all the diary
    if(argc == 1) {
        if(MyDiary.size()) isExist = true;
        for(auto item : MyDiary) {
            cout << item.readDate() << endl;
        }
    }
    // If there is two argument, print the diary between the two date
    else if(argc == 3) {
        // If the first argument is later than the second, swap them
        if(argv[1] > argv[2]) swap(argv[1], argv[2]);
        // flag is used to determine whether the diary is between the two date
        bool flag = false;
        for(auto item : MyDiary) {
            if(item.readDate() >= argv[1]) flag = true;
            if(flag) {
                isExist = true;
                cout << item.readDate() << endl;
            }
            if(item.readDate() > argv[2]) break;
        }
    }
    else {
        cout << "Error! Incorrect number of argument!" <<endl;
        return -1;
    }
    // If there is no diary, print the message
    if(!isExist) cout << "There is no diary you want!" << endl;
    return 0;
}