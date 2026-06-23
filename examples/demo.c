#include <stdio.h>

static int square(int x) {
    return x * x;
}

int main(void) {
    int total = 0;

    for (int i = 0; i < 8; ++i) {
        total += square(i);
    }

    if (total > 0) {
        printf("%d\n", total);
    }

    return 0;
}
