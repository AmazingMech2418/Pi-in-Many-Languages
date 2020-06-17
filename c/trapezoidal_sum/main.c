#include <stdio.h>
#include <math.h>

long double i(long double a) {
  long double p = 0;
  //long double b;
  long double f = 1;
  for(long double x=0;x<1;x+=a) {
    long double b = f;
    f = sqrt(1-(x+a)*(x+a));
    p += (b+f)*a;
  }
  return p*2;
}

int main(void) {
  long double a = 0.0000152587890625;
  while (1) {
    printf("%0.60Lf\n",i(a));
    a /= 2;
  }
  return 0;
}
