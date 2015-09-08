!
! The program calculates average running speed in km/h from given time (s) and distance (m)
!
program prob5
    implicit none
    real :: matka  ! m
    real :: aika ! s 
    real :: keskinopeus
   
    write(*,*) "Give a distance (in meters):"
    read(*,*) matka
    write(*,*) "Give the elapsed time (in seconds):"
    read(*,*) aika

    keskinopeus = matka/aika*3.6 ! km/h

    write(*,"(F7.2,A)") keskinopeus, " km/h"

end program prob5
