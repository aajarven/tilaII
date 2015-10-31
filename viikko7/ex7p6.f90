recursive function Ackerman(m, n) result(tulos)
        implicit none
        integer :: tulos
        integer, intent(in) :: m, n
        
        if (m==0) then
                tulos = n + 1
        else if (n==0) then
                tulos = Ackerman(m-1, 1)
        else 
                tulos = Ackerman(m-1, Ackerman(m, n-1))
        end if
end function

program ex7p6
        implicit none
        integer :: Ackerman
        write(*,*) "A(1,2) =", Ackerman(1,2)
        write(*,*) "A(2,3) =", Ackerman(2,3)
        write(*,*) "A(3,2) =", Ackerman(3,2)
        write(*,*) "A(4,1) =", Ackerman(4,1)
end program

