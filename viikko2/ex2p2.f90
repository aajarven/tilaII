program ex2p2
        implicit none
        integer :: i

        write(*, "(A)") "do i=1,5"
        do i=1,5
                write(*, *) i
        end do

        write(*, "(/, A)") "do i=5,0,-1"
        do i=5,0,-1
                write(*, *) i
        end do

        write(*, "(/, A)") "do i=10,1,-2"
        do i=10,1,-2
                write(*, *) i
        end do
        
        write(*, *) "do i=0,30,7"
        do i=0,30,7
                write(*, *) i
        end do

end program ex2p2
