Open the code.c file, compile and run, and wait for the results.

If you want to use my second method, please comment this out in the code:
val[0] = getBestmatchGREEDY(0);
val[1] = getBestmatchGREEDY(1);
val[2] = getBestmatchGREEDY(2);
val[3] = getBestmatchGREEDY(3);

and uncomment the following line:
val[0] = getBestmatchDP(0);
val[1] = getBestmatchDP(1);
val[2] = getBestmatchDP(2);
val[3] = getBestmatchDP(3);

My test cases:
Test case 1:
3 4
0 4
3 0
0 0
8 4
8 1
4.25 6
8 6

Test case 2:
3 6
0 4
3 0
0 0
5.3 3.2
9.1 2.6
4 5
7 6.7
6.8 5.1
9.3 5.1

Test case 3:
4 3
12.3 2.4
3.7 18.3
15.4 18.7
13.2 13.7
17.9 15
3.7 12.1
12.3 1.7