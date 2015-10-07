program ex1p1
      implicit none
      real :: nolla = 0.0
      real :: inf

      inf = 1/nolla

      write(*,*) "inf: ", inf
      write(*,*) "(+Infinity)*(-Infinity): ", inf*(-1*inf)
      write(*,*) "(-Infinity)*(-Infinity): ", (-1*inf)*(-1*inf)

end program
