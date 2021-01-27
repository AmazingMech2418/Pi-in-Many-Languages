#import <Foundation/Foundation.h>
#import "nilakantha.m"

int main() {
  NilakanthaSeries *approximator = [[NilakanthaSeries alloc]init];
  for(int i = 0; i < 150000; i++) {
    [approximator iterate];
  }
  double result = [approximator getPi];
  NSLog(@"\npi = %.15f\n", result);
  return 0;
}
