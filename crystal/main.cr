# Crystal is pretty much just a faster version of Ruby...

# Define NilakanthaSeries class
class NilakanthaSeries
  # Define starting class variables
  def initialize()
    @p = 3.0
    @a = 2.0
    @s = 1.0
  end
  # Define iterate function
  def iterate()
    @p += @s*(4.0/(@a*(@a*(@a+3.0)+2.0)))
    @a += 2
    @s = -@s
  end
end

# Instantiate class
approximator = NilakanthaSeries.new

# Loop through iteration function
150000.times do
  approximator.iterate()
end

# Print results
puts "pi = #{approximator.@p}"
