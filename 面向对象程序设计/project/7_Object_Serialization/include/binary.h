//
// Created by Sinon on 2023/5/28.
//

#ifndef INC_7_OBJECT_SERIALIZATION_BINARY_H
#define INC_7_OBJECT_SERIALIZATION_BINARY_H
#include <iostream>
#include <fstream>
#include <string>
#include <vector>
#include <list>
#include <set>
#include <map>
#include <memory>

namespace binary {
    // judge the user_defined type
    template<typename T>
    concept Serializable = requires(T &obj, std::ofstream &ofs) {
        obj.serialize(ofs);
    };
    template<typename T>
    concept Deserializable = requires(T &obj, std::ifstream &ifs) {
        obj.deserialize(ifs);
    };
    // declaration
    template<typename T>
    bool serialize(const T &obj, const std::string &filename);
    template<typename T>
    bool deserialize(T &obj, const std::string &filename);
    template<typename T>
    std::enable_if_t<std::is_arithmetic_v<T>, void> serialize_(const T &obj, std::ofstream &ofs);
    template<typename T>
    std::enable_if_t<std::is_arithmetic_v<T>, void> deserialize_(T &obj, std::ifstream &ifs);
    void serialize_(const std::string &obj, std::ofstream &ofs);
    void deserialize_(std::string &obj, std::ifstream &ifs);
    template<typename T1, typename T2>
    void serialize_(const std::pair<T1, T2> &obj, std::ofstream &ofs);
    template<typename T1, typename T2>
    void deserialize_(std::pair<T1, T2> &obj, std::ifstream &ifs);
    template<typename T>
    void serialize_(const std::vector<T> &obj, std::ofstream &ofs);
    template<typename T>
    void deserialize_(std::vector<T> &obj, std::ifstream &ifs);
    template<typename T>
    void serialize_(const std::list<T> &obj, std::ofstream &ofs);
    template<typename T>
    void deserialize_(std::list<T> &obj, std::ifstream &ifs);
    template<typename T>
    void serialize_(const std::set<T> &obj, std::ofstream &ofs);
    template<typename T>
    void deserialize_(std::set<T> &obj, std::ifstream &ifs);
    template<typename T1, typename T2>
    void serialize_(const std::map<T1, T2> &obj, std::ofstream &ofs);
    template<typename T1, typename T2>
    void deserialize_(std::map<T1, T2> &obj, std::ifstream &ifs);
    template<typename T>
    void serialize_(const std::unique_ptr<T> &obj, std::ofstream &ofs);
    template<typename T>
    void deserialize_(std::unique_ptr<T> &obj, std::ifstream &ifs);
    template<typename T>
    void serialize_(const std::shared_ptr<T> &obj, std::ofstream &ofs);
    template<typename T>
    void deserialize_(std::shared_ptr<T> &obj, std::ifstream &ifs);

    template<Serializable T>
    void serialize_(const T &obj, std::ofstream &ofs);
    template<Deserializable T>
    void deserialize_(T &obj, std::ifstream &ifs);
    template<typename T>
    bool deserialize(T &obj, std::ifstream &ifs);
    template<typename T>
    bool serialize(const T &obj, std::ofstream &ofs);


    // serialize
    template<typename T>
    bool serialize(const T &obj, const std::string &filename) {
        std::ofstream ofs(filename, std::ios::binary);
        if (!ofs) {
            std::cout << "Cannot open file: " << filename << std::endl;
            return false;
        }
        serialize_(obj, ofs);
        ofs.close();
        return true;
    }

    // deserialize
    template<typename T>
    bool deserialize(T &obj, const std::string &filename) {
        std::ifstream ifs(filename, std::ios::binary);
        if (!ifs) {
            std::cout << "Cannot open file: " << filename << std::endl;
            return false;
        }
        deserialize_(obj, ifs);
        ifs.close();
        return true;
    }

    // arithmetic types
    template<typename T>
    std::enable_if_t<std::is_arithmetic_v<T>, void> serialize_(const T &obj, std::ofstream &ofs) {
        ofs.write(reinterpret_cast<const char *>(&obj), sizeof(obj));
    }
    template<typename T>
    std::enable_if_t<std::is_arithmetic_v<T>, void> deserialize_(T &obj, std::ifstream &ifs) {
        ifs.read(reinterpret_cast<char *>(&obj), sizeof(obj));
    }

    // string
    void serialize_(const std::string &obj, std::ofstream &ofs) {
        size_t size = obj.size();
        ofs.write(reinterpret_cast<const char *>(&size), sizeof(size));
        ofs.write(obj.c_str(), (long)obj.size());
    }
    void deserialize_(std::string &obj, std::ifstream &ifs) {
        size_t size;
        ifs.read(reinterpret_cast<char *>(&size), sizeof(size));
        char *buf = new char[size + 1];
        ifs.read(buf, (long)size);
        buf[size] = '\0';
        obj = buf;
    }

    // pair
    template<typename T1, typename T2>
    void serialize_(const std::pair<T1, T2> &obj, std::ofstream &ofs) {
        serialize_(obj.first, ofs);
        serialize_(obj.second, ofs);
    }

    template<typename T1, typename T2>
    void deserialize_(std::pair<T1, T2> &obj, std::ifstream &ifs) {
        deserialize_(obj.first, ifs);
        deserialize_(obj.second, ifs);
    }

    // vector
    template<typename T>
    void serialize_(const std::vector<T> &obj, std::ofstream &ofs) {
        size_t size = obj.size();
        ofs.write(reinterpret_cast<const char *>(&size), sizeof(size));
        for (const auto &item : obj) {
            serialize_(item, ofs);
        }
    }
    template<typename T>
    void deserialize_(std::vector<T> &obj, std::ifstream &ifs) {
        size_t size;
        ifs.read(reinterpret_cast<char *>(&size), sizeof(size));
        for (size_t i = 0; i < size; ++i) {
            T item;
            deserialize_(item, ifs);
            obj.push_back(item);
        }
    }

    // list
    template<typename T>
    void serialize_(const std::list<T> &obj, std::ofstream &ofs) {
        size_t size = obj.size();
        ofs.write(reinterpret_cast<const char *>(&size), sizeof(size));
        for (const auto &item : obj) {
            serialize_(item, ofs);
        }
    }
    template<typename T>
    void deserialize_(std::list<T> &obj, std::ifstream &ifs) {
        size_t size;
        ifs.read(reinterpret_cast<char *>(&size), sizeof(size));
        for (size_t i = 0; i < size; ++i) {
            T item;
            deserialize_(item, ifs);
            obj.push_back(item);
        }
    }

    // set
    template<typename T>
    void serialize_(const std::set<T> &obj, std::ofstream &ofs) {
        size_t size = obj.size();
        ofs.write(reinterpret_cast<const char *>(&size), sizeof(size));
        for (const auto &item : obj) {
            serialize_(item, ofs);
        }
    }
    template<typename T>
    void deserialize_(std::set<T> &obj, std::ifstream &ifs) {
        size_t size;
        ifs.read(reinterpret_cast<char *>(&size), sizeof(size));
        for (size_t i = 0; i < size; ++i) {
            T item;
            deserialize_(item, ifs);
            obj.insert(item);
        }
    }

    // map
    template<typename T1, typename T2>
    void serialize_(const std::map<T1, T2> &obj, std::ofstream &ofs) {
        size_t size = obj.size();
        ofs.write(reinterpret_cast<const char *>(&size), sizeof(size));
        for (const auto &item : obj) {
            serialize_(item, ofs);
        }
    }
    template<typename T1, typename T2>
    void deserialize_(std::map<T1, T2> &obj, std::ifstream &ifs) {
        size_t size;
        ifs.read(reinterpret_cast<char *>(&size), sizeof(size));
        for (size_t i = 0; i < size; ++i) {
            std::pair<T1, T2> item;
            deserialize_(item, ifs);
            obj.insert(item);
        }
    }

    // unique_ptr
    template<typename T>
    void serialize_(const std::unique_ptr<T> &obj, std::ofstream &ofs) {
        bool is_nullptr = (obj == nullptr);
        ofs.write(reinterpret_cast<const char *>(&is_nullptr), sizeof(is_nullptr));
        if (!is_nullptr) {
            serialize_(*obj, ofs);
        }
    }
    template<typename T>
    void deserialize_(std::unique_ptr<T> &obj, std::ifstream &ifs) {
        bool is_nullptr;
        ifs.read(reinterpret_cast<char *>(&is_nullptr), sizeof(is_nullptr));
        if (!is_nullptr) {
            obj = std::make_unique<T>();
            deserialize_(*obj, ifs);
        } else {
            obj.reset();
        }
    }

    // shared_ptr
    template<typename T>
    void serialize_(const std::shared_ptr<T> &obj, std::ofstream &ofs) {
        bool is_nullptr = (obj == nullptr);
        ofs.write(reinterpret_cast<const char *>(&is_nullptr), sizeof(is_nullptr));
        if (!is_nullptr) {
            serialize_(*obj, ofs);
        }
    }
    template<typename T>
    void deserialize_(std::shared_ptr<T> &obj, std::ifstream &ifs) {
        bool is_nullptr;
        ifs.read(reinterpret_cast<char *>(&is_nullptr), sizeof(is_nullptr));
        if (!is_nullptr) {
            obj = std::make_shared<T>();
            deserialize_(*obj, ifs);
        } else {
            obj.reset();
        }
    }

    // weak_ptr cannot be serialized because it is not a real pointer, you can only serialize the object it points to

    // user-defined types
    template<typename T>
    bool serialize(const T &obj, std::ofstream &ofs) {
        serialize_(obj, ofs);
        return true;
    }
    template<typename T>
    bool deserialize(T &obj, std::ifstream &ifs) {
        deserialize_(obj, ifs);
        return true;
    }
    template<Serializable T>
    void serialize_(const T &obj, std::ofstream &ofs) {
        obj.serialize(ofs);
    }
    template<Deserializable T>
    void deserialize_(T &obj, std::ifstream &ifs) {
        obj.deserialize(ifs);
    }
}

#endif //INC_7_OBJECT_SERIALIZATION_BINARY_H
