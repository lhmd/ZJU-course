# Object Serialization

<center>王伟杰</center>

## Requirements

- C++20 or higher compiler
- CMake build system

## Compilation

To compile the project, follow these steps:

1. Make sure you have a C++20 or higher compiler installed on your system.
2. Open the `CMakeLists.txt` file and verify that the following compiler options are added: `-std=c++2a -fconcepts`.
3. Create a build directory: `mkdir build && cd build`.
4. Generate the build files using CMake: `cmake ..`.
5. Build the project: `cmake --build .`.

## Usage

Just run the `test.cpp`, then you can see the test result.

## Project Structure

The project directory has the following structure:

- `test/` - Contains the test files for the project.
- `include/` - Contains the implementation code.
- `third_party/` - Contains the TinyXML2 library.

## Dependencies

This project uses the following third-party library:

- TinyXML2: https://github.com/leethomason/tinyxml2

## Bonus

This project support the serialization of smart pointers.
