module ex8p6
contains
  function myfunc(f, deg) result(tulos) 
    real, intent(in) :: deg
    real :: PI
    real, external :: f
    real :: tulos
    PI = 3.14159265
    tulos = f(deg/180.0*PI)
  end function
end module ex8p6

program test
        use ex8p6
        implicit none
        intrinsic :: sin, cos, tan
        write(*,*) myfunc(sin, 180.0)
        write(*,*) myfunc(cos, 30.0)
        write(*,*) myfunc(tan, 100.0)
end program
