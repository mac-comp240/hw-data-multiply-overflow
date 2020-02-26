# Determining if multiplication will overflow

## Overview of Problem

When multiplying either unsigned numbers or signed 2's complement numbers, overflow occurs if the result cannot be held in the 32 bits commonly needed for an integer. The product of two 32-bit numbers, whether signed or unsigned, can be held in a 64-bit integer. Checking for overflow of multiplying two 32-bit numbers is possible if you have all 64 bits of the product. If we consider the higher 32 bits of the product of multiplying x by y as hi(x X y), and the lower 32 bits of the product as lo(x X y), then then **overflow has occurred for either unsigned or signed numbers when the following are true:**


![](./img/rules.jpg)

In the above, for the case when x and y are signed, the small s above the >> indicates the signed arithmetic shift operation.

## Your goal

You will be creating two functions in a file called mult_overflow.c

    bool umult_ok(unsigned int x, unsigned int y)
    bool tmult_ok(int x, int y)
    
Each of these functions returns true if the multiplication of x and y will not result in overflow.

You will test these functions thoroughly in a file called test.c For this problem, **you must use asserts** for your tests. You can feel free to print in either .c file as you debug, but you will need to comment those or remove them and only use asserts to test.

You are given the Makefile.

## What you will build

    mult_overflow.c
    test.c
    
    
### What must work

To grade your work, we should be able to do the following at the terminal:

    make clean
    make
    ./check_mult_overflow
    
