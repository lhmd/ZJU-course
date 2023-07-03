//
// Created by Sinon on 2023/5/5.
//

#ifndef INC_5_FRACTION_FRACTION_H
#define INC_5_FRACTION_FRACTION_H

#include<iostream>
#include<string>
#include<sstream>
#include<cmath>
#include<algorithm>

class Fraction{
private:
    int numerator;
    int denominator;
public:
//    constructors
    Fraction(); // default constructor
    Fraction(int num, int den); // constructor with parameters
    Fraction(const Fraction& fresh);    // copy constructor
    explicit Fraction(double decimal);  // constructor with double
    Fraction(std::string decimal); // constructor with string

//    Arithmetical operators
    Fraction operator+(Fraction& operand);  // operator overload
    Fraction operator-(Fraction& operand);
    Fraction operator*(Fraction& operand);
    Fraction operator/(Fraction& operand);

//    Relational operators
    bool operator<(Fraction& operand) const;    // operator overload
    bool operator<=(Fraction& operand) const;
    bool operator==(Fraction& operand) const;
    bool operator!=(Fraction& operand) const;
    bool operator>=(Fraction& operand) const;
    bool operator>(Fraction& operand) const;

//    Typecast
    double ToDouble() const;    // typecast to double
    std::string ToString() const;   // typecast to string

//    Inserter and extractor for streams
    friend std::istream& operator>>(std::istream& in, Fraction& tmp);   // inserter
    friend std::ostream& operator<<(std::ostream& out, Fraction& tmp);  // extractor

//    simplification
    void simplification();

//    set and get
    void set(int num, int den); // set numerator and denominator
    int GetNumerator() const;   // get numerator
    int GetDenominator() const; // get denominator
};
#endif //INC_5_FRACTION_FRACTION_H
