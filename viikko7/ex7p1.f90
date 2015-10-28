function factorial(k) result(tulos)
        implicit none
        integer, intent(in) :: k
        integer :: tulos
        tulos = 1

        do i=k, 1, -1
                tulos = tulos * i
        end do

end function factorial

