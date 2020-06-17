// I could use F#'s functional programming for this, but I ended up getting Stack Overflow errors, so I switched to loops and variables.

// Define variables
let mutable a = 2.0
let mutable s = 1.0
let mutable p = 3.0

// Define iterate function
let iterate () =
  p <- p + s*(4.0/(a*(a*(a+3.0)+2.0)))
  a <- a + 2.0
  s <- -s

// Begin for loop
for _ in [ 0 .. 150000 ] do
  iterate()

// Print result
System.Console.Write("pi = ")
System.Console.WriteLine(p)
