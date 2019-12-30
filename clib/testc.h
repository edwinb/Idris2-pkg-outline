#ifndef __TESTC_H
#define __TESTC_H

// Add two numbers, purely
int addThings(int x, int y);

// Add two numbers and print a message
int ioAddThings(int x, int y);

typedef int(*IntFn)(int, int);

// Run a function on two integers
int runCallback(IntFn f, int x, int y);

#endif
