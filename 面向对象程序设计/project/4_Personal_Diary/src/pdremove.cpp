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
        cout << "The pdremove algorithm must have some arguments." << endl;
        return -1;
    } else {
        // search the diary in the vector
        for(int i = 1; i < argc; ++i) {
            int j;
            for(j = 0; j < (int)MyDiary.size(); ++j) if(MyDiary[j].readDate() == argv[i]) break;
            // if the diary is not found, print the error message
            if(j == (int)MyDiary.size()) {
                cout << "No diary on " << argv[i] << endl;
                return -1;
            }
            // delete the diary
            for(int k = j; k < (int)MyDiary.size() - 1; k++) MyDiary[k] = MyDiary[k + 1];
            MyDiary.pop_back();
            // print the success message
            cout << "Successfully delete diary in " << argv[i] << "!" << endl;
        }
    }
    // write the diary to the file
    ofstream fout(PATH);
    if(fout.fail()) {
        cout << "File cannot open" << endl;
        return -1;
    }
    // Back up the current state of cout for easy recovery later
    streambuf *coutbackup;
    coutbackup = cout.rdbuf(fout.rdbuf());
    // print the diary to the file
    for(int i = 0; i < (int)MyDiary.size(); i++)
    {
        cout << MyDiary[i].readDate() << endl;
        for(int j = 0; j < MyDiary[i].textSize(); j++)  cout << MyDiary[i].readText(j) << endl;
    }
    cout.rdbuf(coutbackup);
    fout.close();
}