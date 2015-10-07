!
! The program calculates Bolt's average speed during his world record run in kilometers per hour
!
program prob5
    implicit none
    real :: matka = 100.0 ! m
    real :: aika = 9.81 ! s 
    real :: keskinopeus
   
    keskinopeus = matka/aika*3.6 ! km/h

    write(*,"(F5.2,A)") keskinopeus, " km/h"

end program prob5
