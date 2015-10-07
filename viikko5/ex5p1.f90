program ex5p1
        implicit none
        real :: tuumat = 0

        do 
                write(*, "(F4.1, A8, F5.1, A3)") tuumat, " inch = ", tuumat*25.4, " mm"
                tuumat = tuumat + 0.5
                if (tuumat>12) then
                        exit
                end if

        end do
end program
