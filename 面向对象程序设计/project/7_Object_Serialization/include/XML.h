//
// Created by Sinon on 2023/5/29.
//

#ifndef INC_7_OBJECT_SERIALIZATION_XML_H
#define INC_7_OBJECT_SERIALIZATION_XML_H

#include <iostream>
#include <fstream>
#include <string>
#include <vector>
#include <list>
#include <set>
#include <map>
#include <memory>
#include <sstream>
#include "../third_party/tinyxml2/tinyxml2.h"

namespace XML {
    // judge the user_defined type
    template<typename T>
    concept Serializable = requires(T &obj, tinyxml2::XMLDocument &doc, tinyxml2::XMLElement *element) {
        obj.serialize(doc, element);
    };
    template<typename T>
    concept Deserializable = requires(T &obj, tinyxml2::XMLElement *element) {
        obj.deserialize(element);
    };
    // declaration
    tinyxml2::XMLDocument* Init();
    template<typename T>
    bool serialize(const T &obj, const std::string &typename_, const std::string &filename);
    template<typename T>
    bool deserialize(T &obj, const std::string &typename_, const std::string &filename);
    template<typename T>
    std::enable_if_t<std::is_arithmetic_v<T>, void> serialize_(const T &obj, tinyxml2::XMLDocument &doc, tinyxml2::XMLElement *element, const std::string &typename_);
    template<typename T>
    std::enable_if_t<std::is_arithmetic_v<T>, void> deserialize_(T &obj, tinyxml2::XMLElement *element, const std::string &typename_);
    void deserialize_(bool &obj, tinyxml2::XMLElement *element, const std::string &);
    void serialize_(const char &obj, tinyxml2::XMLDocument &doc, tinyxml2::XMLElement *element, const std::string &typename_);
    void serialize_(const std::string &obj, tinyxml2::XMLDocument &doc, tinyxml2::XMLElement *element, const std::string &typename_);
    void deserialize_(std::string &obj, tinyxml2::XMLElement *element, const std::string &typename_);
    template<typename T1, typename T2>
    void serialize_(const std::pair<T1, T2> &obj, tinyxml2::XMLDocument &doc, tinyxml2::XMLElement *element, const std::string &typename_);
    template<typename T1, typename T2>
    void deserialize_(std::pair<T1, T2> &obj, tinyxml2::XMLElement *element, const std::string &typename_);
    template<typename T>
    void serialize_(const std::vector<T> &obj, tinyxml2::XMLDocument &doc, tinyxml2::XMLElement *element, const std::string &typename_);
    template<typename T>
    void deserialize_(std::vector<T> &obj, tinyxml2::XMLElement *element, const std::string &typename_);
    template<typename T>
    void serialize_(const std::list<T> &obj, tinyxml2::XMLDocument &doc, tinyxml2::XMLElement *element, const std::string &typename_);
    template<typename T>
    void deserialize_(std::list<T> &obj, tinyxml2::XMLElement *element, const std::string &typename_);
    template<typename T>
    void serialize_(const std::set<T> &obj, tinyxml2::XMLDocument &doc, tinyxml2::XMLElement *element, const std::string &typename_);
    template<typename T>
    void deserialize_(std::set<T> &obj, tinyxml2::XMLElement *element, const std::string &typename_);
    template<typename T1, typename T2>
    void serialize_(const std::map<T1, T2> &obj, tinyxml2::XMLDocument &doc, tinyxml2::XMLElement *element, const std::string &typename_);
    template<typename T1, typename T2>
    void deserialize_(std::map<T1, T2> &obj, tinyxml2::XMLElement *element, const std::string &typename_);
    template<typename T>
    void serialize_(const std::shared_ptr<T> &obj, tinyxml2::XMLDocument &doc, tinyxml2::XMLElement *element, const std::string &typename_);
    template<typename T>
    void deserialize_(std::shared_ptr<T> &obj, tinyxml2::XMLElement *element, const std::string &typename_);
    template<typename T>
    void serialize_(const std::unique_ptr<T> &obj, tinyxml2::XMLDocument &doc, tinyxml2::XMLElement *element, const std::string &typename_);
    template<typename T>
    void deserialize_(std::unique_ptr<T> &obj, tinyxml2::XMLElement *element, const std::string &typename_);
    template<Serializable T>
    void serialize_(const std::shared_ptr<T> &obj, tinyxml2::XMLDocument &doc, tinyxml2::XMLElement *element, const std::string &typename_);
    template<Serializable T>
    void serialize_(const T &obj, tinyxml2::XMLDocument &doc, tinyxml2::XMLElement *element, const std::string &typename_);
    template<Deserializable T>
    void deserialize_(T &obj, tinyxml2::XMLElement *element, const std::string &);
    template<typename T>
    bool deserialize(T &obj, const std::string &typename_, tinyxml2::XMLElement *element);
    template<typename T>
    bool serialize(const T &obj, const std::string &typename_, tinyxml2::XMLDocument &doc, tinyxml2::XMLElement *element);


    // init
    tinyxml2::XMLDocument* Init() {
        auto *doc = new tinyxml2::XMLDocument();
        doc->NewDeclaration();
        return doc;
    }

    // serialize
    template<typename T>
    bool serialize(const T &obj, const std::string &typename_, const std::string &filename) {
        tinyxml2::XMLDocument *doc = Init();
        tinyxml2::XMLElement *element = doc->NewElement("serialization");
        doc->InsertEndChild(element);
        serialize_(obj, *doc, element, typename_);
        doc->SaveFile(filename.c_str());
        return true;
    }

    // deserialize
    template<typename T>
    bool deserialize(T &obj, const std::string &typename_, const std::string &filename) {
        auto *doc = Init();
        doc->LoadFile(filename.c_str());
        tinyxml2::XMLElement *root = doc->RootElement();
        tinyxml2::XMLElement *element = root->FirstChildElement();
        deserialize_(obj, element, typename_);
        return true;
    }

    // arithmetic types
    template<typename T>
    std::enable_if_t<std::is_arithmetic_v<T>, void> serialize_(const T &obj, tinyxml2::XMLDocument &doc, tinyxml2::XMLElement *element, const std::string &typename_) {
        tinyxml2::XMLElement *child = doc.NewElement(typename_.c_str());
        child->SetAttribute("val", obj);
        element->InsertEndChild(child);
    }
    template<typename T>
    std::enable_if_t<std::is_arithmetic_v<T>, void> deserialize_(T &obj, tinyxml2::XMLElement *element, const std::string &) {
        std::stringstream ss;
        ss << element->FirstAttribute()->Value();
        ss >> obj;
    }

    // bool type will be saved as "true" or "false", we need to convert it to 1 or 0
    void deserialize_(bool &obj, tinyxml2::XMLElement *element, const std::string &) {
        obj = element->FirstAttribute()->BoolValue();
    }

    // char
    void serialize_(const char &obj, tinyxml2::XMLDocument &doc, tinyxml2::XMLElement *element, const std::string &typename_) {
        tinyxml2::XMLElement *child = doc.NewElement(typename_.c_str());
        child->SetAttribute("val", &obj);
        element->InsertEndChild(child);
    }

    // string
    void serialize_(const std::string &obj, tinyxml2::XMLDocument &doc, tinyxml2::XMLElement *element, const std::string &typename_) {
        tinyxml2::XMLElement *child = doc.NewElement(typename_.c_str());
        child->SetAttribute("val", obj.c_str());
        element->InsertEndChild(child);
    }
    void deserialize_(std::string &obj, tinyxml2::XMLElement *element, const std::string &) {
        obj = element->FirstAttribute()->Value();
    }

    // pair
    template<typename T1, typename T2>
    void serialize_(const std::pair<T1, T2> &obj, tinyxml2::XMLDocument &doc, tinyxml2::XMLElement *element, const std::string &typename_) {
        tinyxml2::XMLElement *child = doc.NewElement(typename_.c_str());
        serialize_(obj.first, doc, child, "first");
        serialize_(obj.second, doc, child, "second");
        element->InsertEndChild(child);
    }
    template<typename T1, typename T2>
    void deserialize_(std::pair<T1, T2> &obj, tinyxml2::XMLElement *element, const std::string &) {
        tinyxml2::XMLElement *child = element->FirstChildElement();
        deserialize_(obj.first, child, "first");
        child = child->NextSiblingElement();
        deserialize_(obj.second, child, "second");
    }

    // vector
    template<typename T>
    void serialize_(const std::vector<T> &obj, tinyxml2::XMLDocument &doc, tinyxml2::XMLElement *element, const std::string &typename_) {
        tinyxml2::XMLElement *child = doc.NewElement(typename_.c_str());
        for (auto &i : obj) {
            serialize_(i, doc, child, "item");
        }
        element->InsertEndChild(child);
    }
    template<typename T>
    void deserialize_(std::vector<T> &obj, tinyxml2::XMLElement *element, const std::string &) {
        tinyxml2::XMLElement *child = element->FirstChildElement();
        while (child) {
            T item;
            deserialize_(item, child, "item");
            obj.push_back(item);
            child = child->NextSiblingElement();
        }
    }

    // list
    template<typename T>
    void serialize_(const std::list<T> &obj, tinyxml2::XMLDocument &doc, tinyxml2::XMLElement *element, const std::string &typename_) {
        tinyxml2::XMLElement *child = doc.NewElement(typename_.c_str());
        for (auto &i : obj) {
            serialize_(i, doc, child, "item");
        }
        element->InsertEndChild(child);
    }
    template<typename T>
    void deserialize_(std::list<T> &obj, tinyxml2::XMLElement *element, const std::string &) {
        tinyxml2::XMLElement *child = element->FirstChildElement();
        while (child) {
            T item;
            deserialize_(item, child, "item");
            obj.push_back(item);
            child = child->NextSiblingElement();
        }
    }

    // set
    template<typename T>
    void serialize_(const std::set<T> &obj, tinyxml2::XMLDocument &doc, tinyxml2::XMLElement *element, const std::string &typename_) {
        tinyxml2::XMLElement *child = doc.NewElement(typename_.c_str());
        for (auto &i : obj) {
            serialize_(i, doc, child, "item");
        }
        element->InsertEndChild(child);
    }
    template<typename T>
    void deserialize_(std::set<T> &obj, tinyxml2::XMLElement *element, const std::string &) {
        tinyxml2::XMLElement *child = element->FirstChildElement();
        while (child) {
            T item;
            deserialize_(item, child, "item");
            obj.insert(item);
            child = child->NextSiblingElement();
        }
    }

    // map
    template<typename T1, typename T2>
    void serialize_(const std::map<T1, T2> &obj, tinyxml2::XMLDocument &doc, tinyxml2::XMLElement *element, const std::string &typename_) {
        tinyxml2::XMLElement *child = doc.NewElement(typename_.c_str());
        for (auto &i : obj) {
            serialize_(i, doc, child, "item");
        }
        element->InsertEndChild(child);
    }
    template<typename T1, typename T2>
    void deserialize_(std::map<T1, T2> &obj, tinyxml2::XMLElement *element, const std::string &) {
        tinyxml2::XMLElement *child = element->FirstChildElement();
        while (child) {
            std::pair<T1, T2> item;
            deserialize_(item, child, "item");
            obj.insert(item);
            child = child->NextSiblingElement();
        }
    }

    // unique_ptr
    template<typename T>
    void serialize_(const std::unique_ptr<T> &obj, tinyxml2::XMLDocument &doc, tinyxml2::XMLElement *element, const std::string &typename_) {
        tinyxml2::XMLElement *child = doc.NewElement(typename_.c_str());
        serialize_(*obj, doc, child, typename_);
        element->InsertEndChild(child);
    }
    template<typename T>
    void deserialize_(std::unique_ptr<T> &obj, tinyxml2::XMLElement *element, const std::string &typename_) {
        tinyxml2::XMLElement *child = element->FirstChildElement();
        T item;
        deserialize_(item, child, typename_);
        obj.reset(new T(item));
    }

    // shared_ptr
    template<typename T>
    void serialize_(const std::shared_ptr<T> &obj, tinyxml2::XMLDocument &doc, tinyxml2::XMLElement *element, const std::string &typename_) {
        tinyxml2::XMLElement *child = doc.NewElement(typename_.c_str());
        serialize_(*obj, doc, child, typename_);
        element->InsertEndChild(child);
    }
    template<typename T>
    void deserialize_(std::shared_ptr<T> &obj, tinyxml2::XMLElement *element, const std::string &typename_) {
        tinyxml2::XMLElement *child = element->FirstChildElement();
        T item;
        deserialize_(item, child, typename_);
        obj.reset(new T(item));
    }

    // user-defined class
    template<Serializable T>
    void serialize_(const T &obj, tinyxml2::XMLDocument &doc, tinyxml2::XMLElement *element, const std::string &typename_) {
        tinyxml2::XMLElement *child = doc.NewElement(typename_.c_str());
        obj.serialize(doc, child);
        element->InsertEndChild(child);
    }
    template<Deserializable T>
    void deserialize_(T &obj, tinyxml2::XMLElement *element, const std::string &) {
        obj.deserialize(element);
    }
    template<typename T>
    bool deserialize(T &obj, const std::string &typename_, tinyxml2::XMLElement *element) {
        tinyxml2::XMLElement *child = element->FirstChildElement();
        while(child && strcmp(child->Name(), typename_.c_str()) != 0) {
            child = child->NextSiblingElement();
        }
        deserialize_(obj, child, typename_);
        return true;
    }
    template<typename T>
    bool serialize(const T &obj, const std::string &typename_, tinyxml2::XMLDocument &doc, tinyxml2::XMLElement *element) {
        serialize_(obj, doc, element, typename_);
        return true;
    }



}

#endif //INC_7_OBJECT_SERIALIZATION_XML_H
