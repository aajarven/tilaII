program ex2p3
        implicit none

        integer :: i
        integer :: rk

        do i=1,33 
                rk=selected_real_kind(i, 5) 
                write(*, *) rk
                real(KIND=4) :: h=0.0

!                do n=1, 5000000
!                        h = h + 1.0_rk/real(n,rk)
!                end do

!                write(*, *) h
        end do
        
end program ex2p3
