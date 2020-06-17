class NilakanthaSeries {
  public static double pi;
  public static double a;
  public static double s;
  public NilakanthaSeries() {
    pi = 3.0;
    a = 2.0;
    s = 1.0;
  }
  public void iterate() {
    pi += s*(4.0/(a*(a*(a+3.0)+2.0)));
    a += 2.0;
    s = -s;
  }
  public double getPi() {
    return pi;
  }
}
