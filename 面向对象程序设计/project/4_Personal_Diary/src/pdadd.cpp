#include <algorithm>
#include "diary.h"

// Comparing the dates of two diaries, as a comparison function for diary sorting
bool cmp(Diary a, Diary b) {
    return a.readDate() < b.readDate();
}

// Get today's date and return it as a string in a fixed format
string getToday() {
    time_t t = time(NULL);
    tm* now = localtime(&t);
    string Today = to_string(now->tm_year + 1900);
    if(now->tm_mon + 1 < 10) Today += "0" + to_string(now->tm_mon + 1);
    else Today += to_string(now->tm_mon + 1);
    if(now->tm_mday < 10) Today += "0" + to_string(now->tm_mday);
    else Today += to_string(now->tm_mday);
    return Today;
}

int main(int argc, char* argv[]) {
    // open the diary file
    ifstream fin(PATH);
    if(fin.fail()) {
        // If it cannot be opened, create one through ofstream
        cout << "File cannot open, I create a new file for you." << endl;
        ofstream fout(PATH, ios::app);
        fout.close();
    }
    // Back up the current state of cin for easy recovery later
    streambuf *cinbackup;
    // redirect cin to fin
    cinbackup = cin.rdbuf(fin.rdbuf());
    // Read the diary file and store it in a vector
    vector<Diary> MyDiary;
    string temp;
    while(!cin.eof()) {
        // read the date of the diary
        do {
            cin >> temp;
        } while (temp == "" && !cin.eof());
        // If the file is empty, break
        if(cin.eof()) break;
        Diary tempDiary;
        tempDiary.setDate(temp);
        while(temp != ".") {
            // read the text of the diary
            getline(cin, temp);
            if(temp == "") continue;
            if(temp == "." || cin.eof()) break;
            tempDiary.addText(temp);
        }
        // add the diary to the vector
        tempDiary.addText(".");
        MyDiary.push_back(tempDiary);
    }
    // recover cin
    cin.rdbuf(cinbackup);
    fin.close();

    Diary newDiary;
    // If there is no argument, the date is set to today
    if(argc == 1) newDiary.setDate(getToday());
    else if(argc == 2) newDiary.setDate(argv[1]);
    else {
        cout << "Error! To many argument!" <<endl;
        return -1;
    }
    // read the text of the diary
    do {
        getline(cin, temp);
        if(temp == ".") break;
        newDiary.addText(temp);
    } while(!cin.eof());
    newDiary.addText(".");

    // If the diary already exists, update it
    string flag = "";
    for(int i = 0; i < (int)MyDiary.size(); ++i) if(MyDiary[i].readDate() == newDiary.readDate()) flag = newDiary.readDate();
    if(flag == "") MyDiary.push_back(newDiary);
    sort(MyDiary.begin(), MyDiary.end(), cmp);

    // write the diary to the file
    ofstream  fout(PATH);
    if(fout.fail()) {
        cout << "File cannot open" << endl;
        return -1;
    }
    // Back up the current state of cout for easy recovery later
    streambuf *coutbackup;
    coutbackup = cout.rdbuf(fout.rdbuf());
    for(auto item : MyDiary) {
        // If the diary is updated, output the new diary
        if(flag == item.readDate()) {
            cout << newDiary.readDate() << endl;
            for(int i = 0; i < newDiary.textSize(); ++i) cout << newDiary.readText(i) << endl;
        } else {
            cout << item.readDate() << endl;
            for(int i = 0; i < item.textSize(); ++i) cout << item.readText(i) << endl;
        }
    }
    cout.rdbuf(coutbackup);
    fout.close();
    return 0;
}