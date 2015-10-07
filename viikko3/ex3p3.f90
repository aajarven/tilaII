program ex3p3
        implicit none
        integer, dimension(2,2,2,2,2,2,2) :: array7d

        write(*,*) "shape: ", shape(array7d)
        write(*,*) "size: ", size(array7d)
end program
