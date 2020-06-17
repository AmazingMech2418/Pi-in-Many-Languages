mutable struct NilakanthaSeries
  p::Float64
  a::Float64
  s::Float64
  iterate::Function
  function NilakanthaSeries(_p, _a, _s)
    this = new(_p, _a, _s)
    this.iterate = function()
      s = this.s
      a = this.a
      this.p += s*(4.0/(a*(a*(a+3.0)+2.0)))
      this.a += 2.0
      this.s = -s
    end
    this
  end
end

approximator =  NilakanthaSeries(3.0, 2.0, 1.0)

for _ = 0:150000
  approximator.iterate()
end

println("pi = ",approximator.p)
