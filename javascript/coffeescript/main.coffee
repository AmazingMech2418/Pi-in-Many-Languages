class NilakanthaSeries
  constructor: () -> 
    @p = 3
    @a = 2
    @s = 1
  
  iterate: () ->
    @p += @s*(4/(@a*(@a*(@a+3)+2)))
    @s = -@s
    @a += 2

approximator = new NilakanthaSeries

for i in [0..150000]
  approximator.iterate()

console.log "pi = #{approximator.p}"
