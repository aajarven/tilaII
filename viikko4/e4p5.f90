program ex4p5
        implicit none
        character(len=100) :: tiedostonimi
        integer :: alku, loppu
        integer :: ios
        integer :: i

        write(*,*) "Anna tiedostonimi:"
        read(*,*) tiedostonimi
        write(*,*) "Anna kaksi lukua:"
        read(*,*) alku, loppu

        open(unit=1, file=tiedostonimi, form="formatted", iostat=ios, status='new')
        if  (ios/=0) then
                print '(a,a)','*** Error in opening file ',trim(tiedostonimi)
                stop
        end if

        do i=alku,loppu
                write(1, *) 2**i
        end do

        close(unit=1, status='keep')

end program
