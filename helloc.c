#include<stdio.h>
int main() {
    int x = 0;
for (int i = 1; i <= 5; i++) {
    x = x + 5;  // Multiplication is replaced by addition
    printf("%d", x);
}
}