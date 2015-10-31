function collatzSteps(luku) result(askeleet)
        implicit none
        integer :: askeleet
        integer, intent(in) :: luku
        integer :: tutkittava
        askeleet = 0
        tutkittava = luku
        do
                if (tutkittava == 1) then
                        exit
                else if (mod(tutkittava, 2) == 0) then
                        tutkittava = tutkittava/2
                else
                        tutkittava = tutkittava*3+1
                end if
                askeleet = askeleet + 1
        end do
end function collatzSteps
