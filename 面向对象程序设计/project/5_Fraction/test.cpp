#include "Fraction.h"

int main() {
//    constructors test
    Fraction a(1, 2); //    1/2
    Fraction b(1, -3); //    -1/3
    Fraction c(a); //    1/2
    Fraction d(1.414); //    707/500
    Fraction z("1.414"); //    707/500

    std::cout << "a = " << a << std::endl;
    std::cout << "b = " << b << std::endl;
    std::cout << "c = " << c << std::endl;
    std::cout << "d = " << d << std::endl;
    std::cout << "z = " << z << std::endl;

//    Arithmetical operators test
    Fraction e = a + b; //    1/6
    Fraction f = a - b; //    5/6
    Fraction g = a * b; //    -1/6
    Fraction h = a / b; //    -3/2

    std::cout << "a + b = " << e << std::endl;
    std::cout << "a - b = " << f << std::endl;
    std::cout << "a * b = " << g << std::endl;
    std::cout << "a / b = " << h << std::endl;

//    Relational operators test
    bool i = a < b;     //    false
    bool j = a <= b;    //    false
    bool k = a == b;    //    false
    bool l = a != b;    //    true
    bool m = a >= b;    //    true
    bool n = a > b;     //    true

    std::cout << "a < b = " << i << std::endl;
    std::cout << "a <= b = " << j << std::endl;
    std::cout << "a == b = " << k << std::endl;
    std::cout << "a != b = " << l << std::endl;
    std::cout << "a >= b = " << m << std::endl;
    std::cout << "a > b = " << n << std::endl;

//    Typecast test
    double o = a.ToDouble();    //    0.5
    std::string p = a.ToString();   //    "1/2"

    std::cout << "a.ToDouble() = " << o << std::endl;
    std::cout << "a.ToString() = " << p << std::endl;

//    Inserter and extractor for streams test
    std::cout << "Please input a fraction: " << std::endl;
    Fraction q;
    std::cin >> q;
    std::cout << "The fraction you input is: " << q << std::endl;

//    simplification test
    Fraction r(2, 4);
    r.simplification(); //    1/2
    std::cout << "2/4 simplifies to " << r << std::endl;

//    set and get test
    Fraction s;
    s.set(1, 2);    //    1/2
    int t = s.GetNumerator();   //    1
    int u = s.GetDenominator(); //    2
    std::cout << "s = " << s << std::endl;
    std::cout << "s.GetNumerator() = " << t << std::endl;
    std::cout << "s.GetDenominator() = " << u << std::endl;

    return 0;
}
