#include <stdio.h>
#include "testc.h"

int addThings(int x, int y) {
    return x + y;
}

int ioAddThings(int x, int y) {
    printf("Added %d and %d\n", x, y);
    return x + y;
}

int runCallback(IntFn f, int x, int y) {
    return f(x, y);
}
