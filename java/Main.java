class Main extends NilakanthaSeries {
  public static void main(String[] args) {
    NilakanthaSeries pi = new NilakanthaSeries();
    for(int i=0; i<1000000; i++) {
      pi.iterate();
    }
    System.out.println("pi = "+pi.getPi());
  }
}
