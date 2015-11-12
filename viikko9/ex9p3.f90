module ex9p3
contains
        function gauss_int(f, a, b) result(tulos)
                implicit none
                real :: tulos
                real, external :: f
                real, intent(in) :: a, b

                tulos = (b-a)/2*(f((a+b)/2-(b-a)/(2*sqrt(3.0)))+f((a+b)/2+f(b-a)/(2*sqrt(3.0))))
        end function
end module

program testi
        use ex9p3
        implicit none
        intrinsic :: sin
        write(*,*) gauss_int(sin, 0.0, 1.0 )
end program testi
