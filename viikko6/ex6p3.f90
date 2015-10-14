program ex6p3
        implicit none
        real :: luettu
        integer :: iostatus
        read(*,*, iostat=iostatus) luettu
        if (iostatus>0) then
                write(*,*) "annettu arvo ei ole reaaliluku"
                call exit 
        end if
        write(*,*) luettu

end program      

