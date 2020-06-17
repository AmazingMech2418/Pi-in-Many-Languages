defmodule NilakanthaSeries do
  def iterate(p, a, s, n, times) do
    if n == times do
      p
    else
      iterate(p + s*(4/(a*(a*(a+3)+2))),a+2,-s,n+1,times)
    end
  end
end

calc = &(NilakanthaSeries.iterate(3,2,1,0,&1))

IO.write "pi = "
IO.puts calc.(150000)
