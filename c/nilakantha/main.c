#include <stdio.h>
#include <math.h>

int main(void) {
  long double pi = 3;
  long double a = 2;
  long double sign = 1;
  for(long int i=0; i<10000000; i++) { 
    pi+=sign*(4/(a*(a*(a+3)+2)));
    sign*=-1;
    a+=2;
  }
  printf("pi = %0.16Lf\n",pi);
  return 0;
}
