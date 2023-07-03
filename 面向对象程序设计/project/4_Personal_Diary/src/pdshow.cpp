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
    // recover cin
    cin.rdbuf(cinbackup);
    fin.close();

    if(argc == 1) {
        cout << "The pdshow algorithm must have some arguments." << endl;
        return -1;
    } else {
        // search the diary in the vector
        for(int i = 1; i < argc; ++i) {
            // flag is used to check whether the diary is found
            bool flag = false;
            for(auto item : MyDiary) {
                if(item.readDate() == argv[i]) {
                    flag = true;
                    cout << item.readDate() << endl;
                    for(int i = 0; i < item.textSize(); ++i)
                        cout << item.readText(i) << endl;
                }
            }
            if(!flag) cout << "No diary on " << argv[i] << endl;
        }
    }
    return 0;
}