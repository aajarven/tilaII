program ex3p2
        implicit none
        real :: nolla = 0.0
        real :: negatiivinen = -1.0
        real :: nan1, nan2
        nan1 = nolla/nolla
        nan2 = sqrt(negatiivinen)

        write(*,*) "nan1: ", nan1
        write(*,*) "nan2: ", nan2

        if (nan1.NE.nan1) then
                write(*,*) "nan1!=nan1"
        end if

        if (nan2.NE.nan2) then
                write(*,*) "nan2!=nan2"
        end if
end program

