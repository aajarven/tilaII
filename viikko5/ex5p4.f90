program ex5p4
        implicit none
        real :: summa = 0
        real :: input
        write(*,*) "Anna lukuja, 0 lopettaa"
        do
                read(*,*) input
                if (input == 0) then
                        exit
                else if (input > 0) then
                        summa = summa + sqrt(input)
                end if
        end do
        write(*,*) summa
end program
