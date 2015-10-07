program ex5p3a
        implicit none
        character(len=100) :: tiedostonimi = "array"
        integer :: ios
        integer :: i
        integer :: koko = 5
        integer, dimension(5) :: array = (/ 1, 2, 3, 4, 5 /)

        open(unit=1, file=tiedostonimi, iostat=ios, status='new', access='stream',form='unformatted')
        if  (ios/=0) then
                print '(a,a)','*** Error in opening file ',trim(tiedostonimi)
                print *, ios
                stop
        end if

        write(1) koko
        do i=1, koko
                write(1) array(i)
        end do

        close(unit=1, status='keep')

end program
