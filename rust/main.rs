struct NilakanthaSeries {
  pi: f64,
  a: f64,
  s: f64
}

impl NilakanthaSeries {
  fn iterate(&mut self) -> f64 {
    let s: f64 = self.s;
    let a: f64 = self.a;
    self.pi += s*(4f64/(a*(a*(a+3f64)+2f64)));
    self.s = -s;
    self.a += 2f64;
    self.pi
  }
}

fn main() {
  let mut approximator: NilakanthaSeries = NilakanthaSeries {pi: 3.0, a: 2.0, s: 1.0};
  for _ in 0..150000 {
    approximator.iterate();
  }
  println!("pi = {pi}", pi=approximator.pi);
}
