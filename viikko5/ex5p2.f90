program ex5p1
        implicit none
        integer :: i, j, iarg
        character(10) :: kantaluku_string
        integer :: kantaluku

        iarg = command_argument_count()
        do i=1, iarg
                !do j=1,6
                        call get_command_argument(i, kantaluku_string)
                        read(kantaluku_string, *) kantaluku
                        write(*,"(6(I10, A1))") (kantaluku**j, " ", j=1,6)
                !end do
                !write(*,*)
        end do

end program
