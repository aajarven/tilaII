recursive function tribonacci(luku) result(palautus)
        integer, intent(in) :: luku
        integer :: palautus
        if (luku <= 3) then
                palautus = 1
        else
                palautus = tribonacci(luku-1) + tribonacci (luku-2) + tribonacci(luku-3)
        end if
end function
