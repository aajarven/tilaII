module ex9p4
        implicit none
        type vec2d
                real :: x, y
        end type vec2d      
        
        interface operator(.vcos.)
                module procedure kulmacos
        end interface
contains
        function kulmacos(v1, v2) result(kulma)
                implicit none
                type(vec2d), intent(in) :: v1, v2
                real :: kulma
                kulma = (v1%x*v2%x + v1%y*v2%y)/(sqrt(v1%x**2+v1%y**2)*sqrt(v2%x**2+v2%y**2))
        end function
end module

program testi
        use ex9p4
        implicit none
        type(vec2d) :: v1, v2, v3, v4, v5, v6
        v1 = vec2d(0.0, 1.0)
        v2 = vec2d(1.0, 1.0)
        v3 = vec2d(-1.0, 1.0)
        v4 = vec2d(1.0, -1.0)
        v5 = vec2d(7.0, 3.0)
        v6 = vec2d(3.0, 2.0)
        write(*,*) v1.vcos.v2
        write(*,*) v3.vcos.v4
        write(*,*) v5.vcos.v6
end program
