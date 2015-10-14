program ex6p4
        implicit none
        integer :: i, j, tulostettava
        write(*,*) "     | 1 2 3 4 5 6 7 8 9 10"
        write(*,*) "-----|--------------------------------------------"
        do i=1,10
                write(*,"(I4, A3)", advance='no') i, " |"
                do j=1,10
                        tulostettava = i*j

                        ! iffit, jotta sarakkeet eivät ole siististi päällekäin vaan jokaisen luvun
                        ! välissä on tasan yksi välilyönti
                        if (tulostettava < 10) then
                                write(*, "(I2)", advance='no') tulostettava
                        else if (tulostettava < 100) then
                                write(*, "(I3)", advance='no') tulostettava
                        else
                                write(*,"(I4)", advance='no') tulostettava
                        end if
                end do
                write(*,*) ""
        end do
end program       

