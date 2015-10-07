program ex4p6
        implicit none
        character(len=9) :: tiedostonimi = "luvut.txt"
        integer :: ios
        real :: luettu

        open(unit=1, file=tiedostonimi, iostat=ios, status='old')
        
        if  (ios/=0) then
                print '(a,a)','*** Error in opening file ',trim(tiedostonimi)
                stop
        end if

        do
                read(1, *, iostat=ios) luettu
                if (ios<0) exit
                write(*,*) 2**luettu
        end do

        close(unit=1, status='keep')

end program
