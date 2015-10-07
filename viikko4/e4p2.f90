program ex4p1
        implicit none
        integer, dimension(3,4) :: array 
        integer :: i, j
        array = reshape([ 1, 5, -2, 2, 6, -2, 3, 7, -2, 4, 8, -2], shape(array))

        do i=1,3
                do j=1,4
                        write(*, "(I4)", advance='no') array(i,j)
                end do
                write(*,*) ''
        end do


end program
