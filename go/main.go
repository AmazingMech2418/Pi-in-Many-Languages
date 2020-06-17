package main

import "fmt"

type NilakanthaSeries struct {
  pi float64
  a float64
  s float64
}

func (this *NilakanthaSeries) iterate() float64 {
  s := this.s
  a := this.a
  this.pi += s*(4/(a*(a*(a+3)+2)))
  this.a += 2
  this.s = -s
  return this.pi
}

func main() {
  approximator := NilakanthaSeries{3, 2, 1}
  for i := 0; i < 150000; i++ {
    approximator.iterate()
  }
  fmt.Println("pi =", approximator.pi)
}
