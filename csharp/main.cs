using System;

class MainClass {
  public static double pi = 3.0;
  public static double s = 1.0;
  public static double a = 2.0;
  public static void Main (string[] args) {
    for(int i=0; i<150000; ++i) {
      iterate();
    }
    Console.WriteLine("pi = "+pi);
  }
  public static void iterate() {
    pi += s*(4.0/(a*(a*(a+3.0)+2.0)));
    a += 2.0;
    s = -s;
  }
}
