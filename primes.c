#include <stdio.h>
#include <math.h>

int main() {
  int current = 3;
  while(current < 10000) {
    int test = 2;
    while(test <= current) {
      if (test == current) {
        printf(" %d", current);
        current++;
        break;
      }

      double ratio = (double) current / test;

      if (fmod(ratio, 1) == 0) {
        current++;
        test = 2;
        break;
      } else {
        test++;
      }
    }
  }
  return 0;
}
