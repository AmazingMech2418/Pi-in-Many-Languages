#include <iostream>
#include <iomanip>
#include "nilakantha.h"

using namespace Nilakantha;

int main() {
  NilakanthaSeries approximator = NilakanthaSeries();
  for(int i=0; i < 150000; ++i) {
    approximator.iterate();
  }
  std::cout << "pi = " << std::setprecision(15) << approximator.p << "\n";
  return 0;
}
