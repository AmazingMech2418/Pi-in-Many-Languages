class NilakanthaSeries {
  p: number = 3;
  a: number = 2;
  s: number = 1;
  iterate():void {
    let p: number = this.p;
    let s: number = this.s;
    let a: number = this.a;
    this.p += s*(4/(a*(a*(a+3)+2)));
    this.a += 2;
    this.s = -s;
  }
}

let approximator: NilakanthaSeries = new NilakanthaSeries();

for(let i: number = 0; i < 150000; i++) {
  approximator.iterate();
}

console.log("pi = " + approximator.p);
