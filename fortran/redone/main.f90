subroutine iterate(a, s, pi)
    integer, parameter       :: dp=kind(0.d0)
    real(dp), intent(inout)  :: a, s, pi

    pi = pi + (s * (4_dp / (a * (2_dp + (a *(a + 3_dp))))))
    s = -s
    a = a + 2
end subroutine iterate

function calculate(iters) result(res)
    external iterate
    integer, intent(in)      :: iters
    integer, parameter       :: dp=kind(0.d0)
    real(dp)                 :: res
    real(dp)                 :: a, s, pi
    integer                  :: v

    pi = 3_dp
    a = 2_dp
    s = 1_dp
    do v = 1, iters
        call iterate(a, s, pi)
    end do

    res = pi
end function calculate

program nilakanthaPi
    implicit none
    integer, parameter       :: dp=kind(0.d0)
    real(dp)                 :: pi
    real(dp), external       :: calculate

    pi = calculate(150000)

    print *, "pi =", pi
end program nilakanthaPi
