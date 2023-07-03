//
// Created by Sinon on 2023/5/28.
//

#include "../include/binary.h"
#include "../include/XML.h"

int main() {
    /* test for binary */
    std::cout << "test for binary" << std::endl;
    std::cout << "----------------------------------------" << std::endl;
    std::cout << "| type \t\t\t| result \t|" << std::endl;

    // test for arithmetic types
    bool bool_test = true;
    binary::serialize(bool_test, "test.data");
    bool bool_test2;
    binary::deserialize(bool_test2, "test.data");
    std::cout << "| bool_test: \t\t| " << (bool_test == bool_test2) << "\t\t|" << std::endl;

    char char_test = 'a';
    binary::serialize(char_test, "test.data");
    char char_test2;
    binary::deserialize(char_test2, "test.data");
    std::cout << "| char_test: \t\t| " << (char_test == char_test2) << "\t\t|" << std::endl;

    int int_test = 1;
    binary::serialize(int_test, "test.data");
    int int_test2;
    binary::deserialize(int_test2, "test.data");
    std::cout << "| int_test: \t\t| " << (int_test == int_test2) << "\t\t|" << std::endl;

    long long_test = 1;
    binary::serialize(long_test, "test.data");
    long long_test2;
    binary::deserialize(long_test2, "test.data");
    std::cout << "| long_test: \t\t| " << (long_test == long_test2) << "\t\t|" << std::endl;

    float float_test = 1.0;
    binary::serialize(float_test, "test.data");
    float float_test2;
    binary::deserialize(float_test2, "test.data");
    std::cout << "| float_test: \t\t| " << (float_test == float_test2) << "\t\t|" << std::endl;

    double double_test = 1.0;
    binary::serialize(double_test, "test.data");
    double double_test2;
    binary::deserialize(double_test2, "test.data");
    std::cout << "| double_test: \t\t| " << (double_test == double_test2) << "\t\t|" << std::endl;

    // test for string
    std::string string_test = "hello world";
    binary::serialize(string_test, "test.data");
    std::string string_test2;
    binary::deserialize(string_test2, "test.data");
    std::cout << "| string_test: \t\t| " << (string_test == string_test2) << "\t\t|" << std::endl;

    // test for pair
    std::pair<int, std::string> pair_test = {1, "one"};
    binary::serialize(pair_test, "test.data");
    std::pair<int, std::string> pair_test2;
    binary::deserialize(pair_test2, "test.data");
    std::cout << "| pair_test: \t\t| " << (pair_test == pair_test2) << "\t\t|" << std::endl;

    // test for vector
    std::vector<int> vector_test = {1, 2, 3, 4, 5};
    binary::serialize(vector_test, "test.data");
    std::vector<int> vector_test2;
    binary::deserialize(vector_test2, "test.data");
    std::cout << "| vector_test: \t\t| " << (vector_test == vector_test2) << "\t\t|" << std::endl;

    // test for list
    std::list<int> list_test = {1, 2, 3, 4, 5};
    binary::serialize(list_test, "test.data");
    std::list<int> list_test2;
    binary::deserialize(list_test2, "test.data");
    std::cout << "| list_test: \t\t| " << (list_test == list_test2) << "\t\t|" << std::endl;

    // test for set
    std::set<int> set_test = {1, 2, 3, 4, 5};
    binary::serialize(set_test, "test.data");
    std::set<int> set_test2;
    binary::deserialize(set_test2, "test.data");
    std::cout << "| set_test: \t\t| " << (set_test == set_test2) << "\t\t|" << std::endl;

    // test for map
    std::map<int, std::string> map_test = {{1, "one"}, {2, "two"}, {3, "three"}};
    binary::serialize(map_test, "test.data");
    std::map<int, std::string> map_test2;
    binary::deserialize(map_test2, "test.data");
    std::cout << "| map_test: \t\t| " << (map_test == map_test2) << "\t\t|" << std::endl;

    // test for user-defined types
    struct user_defined_binary {
        int a{};
        std::string b;
        std::vector<int> c;
        std::map<int, std::string> d;
        void serialize(std::ofstream &out) const {
            binary::serialize(a, out);
            binary::serialize(b, out);
            binary::serialize(c, out);
            binary::serialize(d, out);
        }
        void deserialize(std::ifstream &in) {
            binary::deserialize(a, in);
            binary::deserialize(b, in);
            binary::deserialize(c, in);
            binary::deserialize(d, in);
        }
    };
    user_defined_binary user_defined_test = {1, "one", {1, 2, 3, 4, 5}, {{1, "one"}, {2, "two"}, {3, "three"}}};
    binary::serialize(user_defined_test, "test.data");
    user_defined_binary user_defined_test2;
    binary::deserialize(user_defined_test2, "test.data");
    std::cout << "| user_defined_test: \t| " << (user_defined_test.a == user_defined_test2.a &&
                                               user_defined_test.b == user_defined_test2.b &&
                                               user_defined_test.c == user_defined_test2.c &&
                                               user_defined_test.d == user_defined_test2.d)
              << "\t\t|" << std::endl;

    // test for unique_ptr
    std::unique_ptr<int> unique_ptr_test(new int(10));
    binary::serialize(unique_ptr_test, "test.data");
    std::unique_ptr<int> unique_ptr_test2;
    binary::deserialize(unique_ptr_test2, "test.data");
    std::cout << "| unique_ptr_test: \t| " << (*unique_ptr_test == *unique_ptr_test2) << "\t\t|" << std::endl;

    // test for shared_ptr
    std::shared_ptr<int> shared_ptr_test(new int(10));
    binary::serialize(shared_ptr_test, "test.data");
    std::shared_ptr<int> shared_ptr_test2;
    binary::deserialize(shared_ptr_test2, "test.data");
    std::cout << "| shared_ptr_test: \t| " << (*shared_ptr_test == *shared_ptr_test2) << "\t\t|" << std::endl;

    std::cout << "----------------------------------------" << std::endl << std::endl;

    /* test for XML */
    std:: cout << "test for XML" << std::endl;
    std::cout << "----------------------------------------" << std::endl;
    std::cout << "| type \t\t\t| result \t|" << std::endl;
    // test for arithmetic types
    bool bool_test3 = true;
    XML::serialize(bool_test3, "bool", "test.xml");
    bool bool_test4;
    XML::deserialize(bool_test4, "bool", "test.xml");
    std::cout << "| bool_test: \t\t| " << (bool_test3 == bool_test4) << "\t\t|" << std::endl;

    char char_test3 = 'a';
    XML::serialize(char_test3, "char", "test.xml");
    char char_test4;
    XML::deserialize(char_test4, "char", "test.xml");
    std::cout << "| char_test: \t\t| " << (char_test3 == char_test4) << "\t\t|" << std::endl;

    int int_test3 = 1;
    XML::serialize(int_test3, "int", "test.xml");
    int int_test4;
    XML::deserialize(int_test4, "int", "test.xml");
    std::cout << "| int_test: \t\t| " << (int_test3 == int_test4) << "\t\t|" << std::endl;

    float float_test3 = 1.0;
    XML::serialize(float_test3, "float", "test.xml");
    float float_test4;
    XML::deserialize(float_test4, "float", "test.xml");
    std::cout << "| float_test: \t\t| " << (float_test3 == float_test4) << "\t\t|" << std::endl;

    // test for string
    std::string string_test3 = "hello world";
    XML::serialize(string_test3, "string", "test.xml");
    std::string string_test4;
    XML::deserialize(string_test4, "string", "test.xml");
    std::cout << "| string_test: \t\t| " << (string_test3 == string_test4) << "\t\t|" << std::endl;

    // test for pair
    std::pair<int, std::string> pair_test3 = {1, "one"};
    XML::serialize(pair_test3, "pair", "test.xml");
    std::pair<int, std::string> pair_test4;
    XML::deserialize(pair_test4, "pair", "test.xml");
    std::cout << "| pair_test: \t\t| " << (pair_test3 == pair_test4) << "\t\t|" << std::endl;

    // test for vector
    std::vector<int> vector_test3 = {1, 2, 3, 4, 5};
    XML::serialize(vector_test3, "vector", "test.xml");
    std::vector<int> vector_test4;
    XML::deserialize(vector_test4, "vector", "test.xml");
    std::cout << "| vector_test: \t\t| " << (vector_test3 == vector_test4) << "\t\t|" << std::endl;

    // test for list
    std::list<std::string> list_test3 = {"one", "two", "three", "four", "five"};
    XML::serialize(list_test3, "list", "test.xml");
    std::list<std::string> list_test4;
    XML::deserialize(list_test4, "list", "test.xml");
    std::cout << "| list_test: \t\t| " << (list_test3 == list_test4) << "\t\t|" << std::endl;

    // test for set
    std::set<int> set_test3 = {1, 2, 3, 4, 5};
    XML::serialize(set_test3, "set", "test.xml");
    std::set<int> set_test4;
    XML::deserialize(set_test4, "set", "test.xml");
    std::cout << "| set_test: \t\t| " << (set_test3 == set_test4) << "\t\t|" << std::endl;

    // test for map
    std::map<int, std::string> map_test3 = {{1, "one"}, {2, "two"}, {3, "three"}};
    XML::serialize(map_test3, "map", "test.xml");
    std::map<int, std::string> map_test4;
    XML::deserialize(map_test4, "map", "test.xml");
    std::cout << "| map_test: \t\t| " << (map_test3 == map_test4) << "\t\t|" << std::endl;

    // test for user-defined types
    struct user_defined_xml {
        int a{};
        std::string b;
        std::vector<int> c;
        std::map<int, std::string> d;
        void serialize(tinyxml2::XMLDocument &doc, tinyxml2::XMLElement *element) const {
            XML::serialize(a, "a", doc, element);
            XML::serialize(b, "b", doc, element);
            XML::serialize(c, "c", doc, element);
            XML::serialize(d, "d", doc, element);
        }
        void deserialize(tinyxml2::XMLElement *element) {
            XML::deserialize(a, "a", element);
            XML::deserialize(b, "b", element);
            XML::deserialize(c, "c", element);
            XML::deserialize(d, "d", element);
        }
    };
    user_defined_xml user_defined_xml_test3 = {1, "one", {1, 2, 3, 4, 5}, {{1, "one"}, {2, "two"}, {3, "three"}}};
    XML::serialize(user_defined_xml_test3, "user_defined_xml", "test.xml");
    user_defined_xml user_defined_xml_test4;
    XML::deserialize(user_defined_xml_test4, "user_defined_xml", "test.xml");
    std::cout << "| user_defined_test: \t| " << (user_defined_xml_test3.a == user_defined_xml_test4.a &&
                                                 user_defined_xml_test3.b == user_defined_xml_test4.b &&
                                                 user_defined_xml_test3.c == user_defined_xml_test4.c &&
                                                 user_defined_xml_test3.d == user_defined_xml_test4.d)
              << "\t\t|" << std::endl;

    // test for unique_ptr
    std::unique_ptr<int> unique_ptr_test3(new int(10));
    XML::serialize(unique_ptr_test3, "unique_ptr", "test.xml");
    std::unique_ptr<int> unique_ptr_test4;
    XML::deserialize(unique_ptr_test4, "unique_ptr", "test.xml");
    std::cout << "| unique_ptr_test: \t| " << (*unique_ptr_test3 == *unique_ptr_test4) << "\t\t|" << std::endl;

    // test for shared_ptr
    std::shared_ptr<int> shared_ptr_test3(new int(10));
    XML::serialize(shared_ptr_test3, "shared_ptr", "test.xml");
    std::shared_ptr<int> shared_ptr_test4;
    XML::deserialize(shared_ptr_test4, "shared_ptr", "test.xml");
    std::cout << "| shared_ptr_test: \t| " << (*shared_ptr_test3 == *shared_ptr_test4) << "\t\t|" << std::endl;


    std::cout << "----------------------------------------" << std::endl;
}