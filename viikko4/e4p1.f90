program ex4p1
        implicit none
        integer, dimension(10,10) :: shakkilauta = 0
        integer :: i, j

        do i=1,10
                shakkilauta(i,MOD(i+1,2):10:2) = 1
        end do

        do i=1,10
                do j=1,10
                        write(*,"(I1)", advance='no') shakkilauta(i,j)
                end do
                write(*,*) ""
        end do
end program
