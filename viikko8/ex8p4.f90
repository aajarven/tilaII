! laskee luku^luku^...^luku siten, että lukuja on määrä syvyys
function tetration(luku, syvyys) result(tulos)
        integer, intent(in) :: luku, syvyys
        integer :: tulos
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
