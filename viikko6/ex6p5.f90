program ex6p2
        implicit none
        real :: operandi1, operandi2
        character(20) :: operandi1string, operandi2string
        character :: operaattori
        integer :: argnum, iostatus

        argnum = command_argument_count()
        if (argnum /= 3) then
                write(*,*) "anna operandit ja operaattori välilyönneillä eroteltuna, siis esimerkiksi 1 + 2"
                call exit
        end if

        call get_command_argument(1, operandi1string)
        read (operandi1string, *, iostat=iostatus) operandi1     
        if (iostatus /= 0) then
                write(*,*) "ensimmäisen argumentin on oltava luku"
                call exit
        end if

        call get_command_argument(2, operaattori)
        read (operaattori, "(A1)", iostat=iostatus) operaattori     
        if (iostatus /= 0) then
                write(*,*) "operaattorin on oltava +, -, * tai /"
                call exit
        end if

        call get_command_argument(3, operandi2string)
        read (operandi2string, *, iostat=iostatus) operandi2     
        if (iostatus /= 0) then
                write(*,*) "kolmannen argumentin on oltava luku"
                call exit
        end if

        if (operaattori == '+') then
                write(*,*) operandi1 + operandi2
        else if (operaattori == '-') then
                write(*,*) operandi1 - operandi2
        else if (operaattori == '*') then
                write(*,*) operandi1 * operandi2
        else if (operaattori == '/') then
                write(*,*) operandi1 / operandi2;
        else
                write(*,*) "Toisen argumentin on oltava jokin sallituista operaattoreista (+, -, *, /)"
                call exit
        end if
end program

