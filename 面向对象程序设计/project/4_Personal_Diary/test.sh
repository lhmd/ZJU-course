#! bin/bash
echo "This is a test file, please put it in the same directory as the executable file pdadd, pdlist, pdshow and pdremove."

touch 1.txt
echo "Today is 20230310!"> 1.txt
echo "Today is a memorable day!" >> 1.txt
echo "\ntest for pdadd: add 20230310"
./pdadd 20230310 < 1.txt
rm -f 1.txt 

echo "\ntest for pdalist:"
./pdlist 
echo "\ntest for pdalist:"
./pdlist 20220101 20240310

touch 2.txt
echo "Today is 20220311!"> 2.txt
echo "Today is another memorable day!" >> 2.txt
echo "\ntest for pdadd: add 20220311"
./pdadd 20220311 < 2.txt
rm -f 2.txt 
echo "\ntest for pdshow:"
./pdshow
echo "\ntest for pdalist:"
./pdlist
echo "\ntest for pdashow:"
./pdshow 20220311
echo "\ntest for pdaremove:"
./pdremove
echo "\ntest for pdaremove:"
./pdremove 20230310 20220311
echo "\ntest for pdalist:"
./pdlist
