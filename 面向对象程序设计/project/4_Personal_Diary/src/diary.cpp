#include "diary.h"

Diary::Diary() { this->text.clear(); }
void Diary::addText(std::string mytext) { this->text.push_back(mytext); }
string Diary::readDate() { return this->date; }
int Diary::textSize() { return text.size(); }
string Diary::readText(int i) { return this->text[i]; }
bool Diary::setDate(std::string mydate) {
    if(this->date.empty()) {
        this->date = mydate;
        return true;
    }
    return false;
}
void Diary::free() {
    date.clear();
    text.clear();
}