program ex5p3b
        implicit none
        character(len=100) :: tiedostonimi = "array.txt"
        integer :: ios
        integer :: i
        integer :: koko
        integer :: luettu
        integer, dimension(5) :: array

        open(unit=1, file=tiedostonimi, iostat=ios, status='old', access='stream',form='unformatted')
        if  (ios/=0) then
                print '(a,a)','*** Error in opening file ',trim(tiedostonimi)
                print *, ios
                stop
        end if

        read(1, rec=1) koko
        array = reshape(array, (/koko/))

        do i=2, koko
                read(1) array(i)
        end do

        close(unit=1, status='keep')
end program
