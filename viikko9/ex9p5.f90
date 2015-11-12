module ex9p5
        implicit none
        real :: p = -1
        type gcn
                real :: x, y
        end type gcn      
contains
        function add(c1, c2) result(c)
                implicit none
                type(gcn), intent(in) :: c1, c2
                type(gcn) :: c
                c = gcn(c1%x + c2%x, c1%y + c2%y)
        end function

        function sub(c1, c2) result(c)
                implicit none
                type(gcn), intent(in) :: c1, c2
                type(gcn) :: c
                c = gcn(c1%x - c2%x, c1%y - c2%y)
         end function

        function mul(c1, c2) result(c)
                implicit none
                type(gcn), intent(in) :: c1, c2
                type(gcn) :: c
                c = gcn(c1%x*c2%x + p*c1%y*c2%y, c1%x*c2%y + c1%y*c2%x)
         end function

        function div(c1, c2) result(c)
                implicit none
                type(gcn), intent(in) :: c1, c2
                type(gcn) :: c
                real :: d
                d = 1/(c2%x**2-p*c2%y**2)
                c = gcn(d*(c1%x*c2%x + p*c1%y*c2%y), d*(-c1%x*c2%y + c1%y*c2%x))
         end function
end module

program testi
        use ex9p5
        implicit none
        type(gcn) :: gc1, gc2, gc3, gc4, gc5, gc6, gc7, gc8
        complex :: c1, c2, c3, c4, c5, c6, c7, c8
        gc1 = gcn(2.0, 3.0)
        gc2 = gcn(3.0, 4.0)
        gc3 = gcn(10.0, 2.0)
        gc4 = gcn(11.0, 8.0)
        gc5 = gcn(1.0, 2.0)
        gc6 = gcn(1.0, 1.0)
        gc7 = gcn(12.0, 9.0)
        gc8 = gcn(1.0, 4.0)
        c1 = complex(2.0, 3.0)
        c2 = complex(3.0, 4.0)
        c3 = complex(10.0, 2.0)
        c4 = complex(11.0, 8.0)
        c5 = complex(1.0, 2.0)
        c6 = complex(1.0, 1.0)
        c7 = complex(12.0, 9.0)
        c8 = complex(1.0, 4.0)
        write(*,*) "gcn:", add(gc1, gc2)
        write(*,*) "complex:", c1 + c2
        write(*,*) "gcn:", sub(gc3, gc4)
        write(*,*) "complex:", c3 - c4
        write(*,*) "gcn:", mul(gc5, gc6)
        write(*,*) "complex:", c5*c6
        write(*,*) "gcn:", div(gc7, gc8)
        write(*,*) "complex:", c7/c8
end program
