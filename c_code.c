#include <stdio.h>

void masin(int* mas, int n) {
for (int i = 0; i < n; ++i) {
scanf("%d", &mas[i]);
}
}

void masout(int* mas, int n) {
for (int i = 0; i < n; ++i) {
printf("%d ", mas[i]);
}
}

int main(void) {
int masA[1000], masB[1000];
int n, pos = 0, neg = 0;
scanf("%d", &n);
masin(masA, n);
for (int i = 0; i < n; ++i) {
(masA[i] > 0) ? (pos += masA[i]) : (neg += masA[i]);
};
for (int i = 0; i < n; ++i) {
(i % 2 == 0) ? (masB[i] = pos) : (masB[i] = neg);
};
masout(masB, n);
return 0;
}
