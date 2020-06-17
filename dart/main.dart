class NilakanthaSeries {
  double p = 3;
  double a = 2;
  double s = 1;

  NilakanthaSeries();

  void iterate() {
    p += s*(4/(a*(a*(a+3)+2)));
    a += 2;
    s = -s;
  }
}

void main(List<String> args) {
  NilakanthaSeries approximator = new NilakanthaSeries();
  for(int i = 0; i < 150000; i++) {
    approximator.iterate();
  }
  print("pi = " + approximator.p.toString());
}
