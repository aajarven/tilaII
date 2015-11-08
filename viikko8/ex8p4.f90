! laskee luku^luku^...^luku siten, että lukuja on määrä syvyys
function tetration(luku, syvyys) result(tulos)
        real, intent(in) :: luku
        integer, intent(in) :: syvyys
        real :: tulos
        integer :: kasiteltava
        integer :: eksponentti
        if (syvyys == 0) then
                tulos = 1
        else
                eksponentti = 1
                do kasiteltava = 1,syvyys-1
                        eksponentti = luku**eksponentti
                end do
                tulos = luku ** eksponentti
        end if
end function
