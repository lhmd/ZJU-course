//
// Created by Sinon on 2023/5/5.
//
#include "Fraction.h"

Fraction::Fraction(): numerator(0), denominator(1) {}
Fraction::Fraction(int num, int den): numerator(num), denominator(den){ simplification(); } // constructor with parameters
Fraction::Fraction(const Fraction &fresh): numerator(fresh.numerator), denominator(fresh.denominator){ simplification(); }  // copy constructor
// constructor with double
Fraction::Fraction(double decimal) {
    int power = pow(10, std::to_string(decimal).length() - (std::to_string(decimal).find('.') + 1));
    numerator = decimal * power;
    denominator = power;
    simplification();
}
Fraction::Fraction(std::string decimal) {
    denominator = pow(10, decimal.length() - 1 - decimal.find('.'));
    numerator = std::stoi(decimal.substr(0, decimal.find('.'))+decimal.substr(decimal.find('.') + 1, decimal.size()));
    simplification();
}

// operator overload
Fraction Fraction::operator+(Fraction& operand) { return {numerator * operand.denominator + denominator * operand.numerator, denominator * operand.denominator}; }
Fraction Fraction::operator-(Fraction& operand) { return {numerator * operand.denominator - denominator * operand.numerator, denominator * operand.denominator}; }
Fraction Fraction::operator*(Fraction& operand) { return {numerator * operand.numerator, denominator * operand.denominator}; }
Fraction Fraction::operator/(Fraction& operand) { return {numerator * operand.denominator, denominator * operand.numerator}; }

bool Fraction::operator<(Fraction& operand) const { return numerator * operand.denominator < denominator * operand.numerator; }
bool Fraction::operator<=(Fraction& operand) const { return numerator * operand.denominator <= denominator * operand.numerator; }
bool Fraction::operator==(Fraction& operand) const { return numerator * operand.denominator == denominator * operand.numerator; }
bool Fraction::operator!=(Fraction& operand) const { return numerator * operand.denominator != denominator * operand.numerator; }
bool Fraction::operator>=(Fraction& operand) const { return numerator * operand.denominator >= denominator * operand.numerator; }
bool Fraction::operator>(Fraction& operand) const { return numerator * operand.denominator > denominator * operand.numerator; }

// typecast to double
double Fraction::ToDouble() const { return (double)1.0 * numerator / denominator; }
// typecast to string
std::string Fraction::ToString() const {
    if(!denominator) return "NaN";  // denominator cannot be zero
    else if(!numerator) return "0"; // numerator is zero
    else if(denominator == 1) return std::to_string(numerator); // denominator is one
    else return std::to_string(numerator) + "/" + std::to_string(denominator);  // normal
}

std::istream& operator>>(std::istream& in, Fraction& tmp) {
    std::string fraction;   // input string
    getline(in, fraction);
    std::stringstream ss(fraction);
    int num, den;
    char slash;
    if (ss >> num >> slash >> den && slash == '/') {    // valid input
        tmp = Fraction(num, den);
    } else {
        in.setstate(std::ios::failbit); // invalid input
    }
    return in;
}
std::ostream& operator<<(std::ostream& out, Fraction& tmp) {
    out << tmp.ToString();  // output string
    return out;
}


void Fraction::simplification() {
    if(!denominator) return;    // denominator cannot be zero
    int gcd = std::__gcd(numerator, denominator);   // greatest common divisor
    numerator /= gcd;   // simplify
    denominator /= gcd;
    if(denominator < 0) {   // denominator is negative
        numerator = -numerator;
        denominator = -denominator;
    }
}


void Fraction::set(int num, int den) {
    numerator = num;
    denominator = den;
    simplification();
}
int Fraction::GetNumerator() const { return numerator; }
int Fraction::GetDenominator() const { return denominator; }