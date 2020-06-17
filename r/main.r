# Define the global variables
# p represents π
# a represents the counter in the Nilakantha Series
# s determines whether to add or subtract
p <- 3
a <- 2
s <- 1

# Define the iteration function
iterate <- function() {
  # I had to use the <<- assignment operator since it is a global variable 
  p <<- p + s * (4 / (a * (a * (a + 3) + 2)))
  a <<- a + 2
  s <<- -s
}

# Define counter variable
i <- 0
# Begin while loop
while(i < 150000) {
  # Iterate Nilakantha Series
  iterate()
  # Increment counter variable
  i <<- i + 1
}

# I could have done a repeat loop, but while is easier.
# What the repeat loop would be like:
"
repeat {
  iterate()
  if(i >= 150000) {
    break
  }
  i <<- i + 1
}
"


# Print result
print ( paste("pi =", p))
