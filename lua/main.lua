-- Initialize variables
pi = 3
a = 2
s = 1
-- Define iteration function
function iterate()
  pi = pi+s*(4/(a*(a*(a+3)+2)))
  s = -s
  a = a+2
end
-- Run for loop
for i=0, 150000 do
  iterate()
end
-- Print result
print("pi =",pi)
