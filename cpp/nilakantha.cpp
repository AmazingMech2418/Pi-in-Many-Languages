#include "nilakantha.h"

namespace Nilakantha {
  void NilakanthaSeries::iterate() {
    p += s*(4/(a*(a*(a+3)+2)));
    a += 2;
    s = -s;
  }
}
