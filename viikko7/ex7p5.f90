function collatzSteps(luku) result(askeleet)
        implicit none
        integer :: askeleet
        integer, intent(in) :: luku
        integer :: tutkittava
        integer, dimension(18) :: syklit
        askeleet = 0
        tutkittava = luku
        syklit = (/ 0, -1, 1, 2, -5, -7, -10, -17,-25, -37, -55, -82, -41, -61, -91, -136, -68, -34 /)
        do
                if ( any(syklit == tutkittava) ) then
                        exit
                else if (mod(tutkittava, 2) == 0) then
                        tutkittava = tutkittava/2
                else
                        tutkittava = tutkittava*3+1
                end if
                askeleet = askeleet + 1
        end do
end function collatzSteps
