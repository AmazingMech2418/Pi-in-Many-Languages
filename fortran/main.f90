program nilakanthaPi
implicit none
integer, parameter :: dp=kind(0.d0)
real(dp) :: p, c, s
integer :: v
p = 3_dp
s = 1_dp
c = 2_dp
do v = 1, 1000000
  p = p+(s*(4_dp/(c*(2_dp+(c*(c+3_dp))))))
  s = -1_dp*s
  c = c+2_dp
end do
print *, "pi =", p
end program nilakanthaPi
