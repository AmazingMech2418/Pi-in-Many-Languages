class NilakanthaSeries() {
  var p: Double = 3.0
  private var a: Double = 2.0
  private var s: Double = 1.0
  def iterate: Unit = {
    p += s * (4.0 / (a * (a * (a + 3.0) + 2.0)))
    a += 2.0
    s = -s
  }
}

object Main {
  def main(args: Array[String]): Unit = {
    val approximator = new NilakanthaSeries();
    for( _ <- 0 to 150000) {
      approximator.iterate
    }
    println("pi = " + approximator.p)
  }
}
