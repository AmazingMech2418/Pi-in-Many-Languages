import std.stdio: writefln; 

struct NilakanthaSeries {
  double p = 3.0;
  double a = 2.0;
  double s = 1.0;
  void iterate() {
    p += s*(4/(a*(a*(a+3)+2)));
    a += 2;
    s = -s;
  }
}

void main() {
  NilakanthaSeries approximator = NilakanthaSeries();
  for(int i = 0; i < 150000; ++i) {
    approximator.iterate();
  }
  writefln("pi = %.15f", approximator.p);
}
