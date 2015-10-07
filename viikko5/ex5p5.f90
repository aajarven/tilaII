program ex5p4
        implicit none
        integer :: askeleet = 0
        character(20) :: tutkittava_string
        integer :: tutkittava
        integer :: argnum

        argnum = command_argument_count()
        if (argnum /= 1) then
                write(0,*) "ERROR: anna tutkittava luku komentoriviargumenttina"
                stop
        end if
        
        call get_command_argument(1, tutkittava_string)
        read(tutkittava_string, *) tutkittava

        do
                if (tutkittava == 1) then
                        write(*,*) askeleet
                        exit
                else if (mod(tutkittava, 2) == 0) then
                        tutkittava = tutkittava/2
                else
                        tutkittava = tutkittava*3+1
                end if
                askeleet = askeleet + 1
        end do
end program
