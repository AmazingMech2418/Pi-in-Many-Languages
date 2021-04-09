struct NilakanthaSeries {
    mut:
        a int = 2
        s int = 1
    pub mut:
        pi f64 = 3.0
}

fn (mut this NilakanthaSeries) iterate() f64 {
    s := f64(this.s)
    a := f64(this.a)
    this.pi += s*(4.0/(a*(a*(a+3.0)+2.0)))
    this.s = -this.s
    this.a += 2
    return this.pi
}

fn main() {
    mut approximator := NilakanthaSeries{}
    for _ in 0 .. 150000 {
        approximator.iterate()
    }
    println("pi = ${approximator.pi:.14f}")
}
