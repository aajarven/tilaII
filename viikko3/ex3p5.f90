program ex3p5
        implicit none
        integer, dimension(4) :: a
        integer, dimension(3,3) :: b
        integer, dimension(4,4) :: c
        integer :: i,j

        ! alustetaan jokainen taulukko sisältämään riveittäin luvut 1, 2, 3, ...
        do i=1,4 
                a(i)=i
        end do

        do i=1,3
                do j=1,3
                        b(i, j) = (i-1)*3+j
                end do
        end do

        do i=1,4
                do j=1,4
                        c(i,j) = (i-1)*4+j
                end do
        end do

        write(*,*) "a slice:"
        write(*,*) a(3:4)
        write(*,*)
        write(*,*) "b slice:"
        write(*,*) b(1:3:2,1:3:2)
        write(*,*)
        write(*,*) "c slice:"
        write(*,*) c(2:3, 2:3)

end program
