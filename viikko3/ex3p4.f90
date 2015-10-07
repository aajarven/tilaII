program ex3p4
        implicit none
        integer, dimension(2,2) :: array
        integer :: i, j

        do i = 1,2
                do j = 1,2
                        read(*, *) array(j, i)
                end do
        end do

        array = array**2

        write(*,*) array

end program
      
