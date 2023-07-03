#include <iostream>
#include "Vector.h"
int main() {
//    test for constructor
    Vector<int> a;
    for(int i = 0; i < 10; i++) {
        a.push_back(i); // test for push_back()
    }
    Vector<std::string> b(10);
    for(int i = 0; i < 10; i++) {
        b[i] = "Hello" + std::to_string(i);
    }
//    test for copy constructor
    Vector<int> c(a);

    std::cout << "a: ";
    for(int i = 0; i < a.size(); i++) {
        std::cout << a[i] << " ";   // test for operator[]
    }// a: 0 1 2 3 4 5 6 7 8 9
    std::cout << std::endl << "b: ";
    for(int i = 0; i < b.size(); i++) {
        std::cout << b.at(i) << " ";    // test for at()
    }// b: Hello0 Hello1 Hello2 Hello3 Hello4 Hello5 Hello6 Hello7 Hello8 Hello9
    std::cout << std::endl << "c: ";
    for(int i = 0; i < c.size(); i++) {
        std::cout << c.at(i) << " ";
    }// c: 0 1 2 3 4 5 6 7 8 9

//    test for clear()
    c.clear();
    std::cout << std::endl << "c is empty" << std::endl;
//    test for empty()
    std::cout << "Whether a is empty: " << a.empty() << std::endl;  // 0
    std::cout << "Whether c is empty: " << c.empty() << std::endl;  // 1
//    test for out of range
    std::cout << std::endl << "This is out of range: ";
//    the index is out of range, throw an exception, terminate the program
    std::cout << b.at(b.size()) << std::endl;

    return 0;
}
