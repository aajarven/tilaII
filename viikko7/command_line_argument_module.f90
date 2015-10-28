module cmd_line

  implicit none
  integer,parameter :: rk=selected_real_kind(10,20)
  integer,parameter :: MAXBUF=200
  character(len=MAXBUF),private :: argu

contains

  ! 
  ! Define here functions 
  ! 
  ! cmd2real(i) 
  ! of type real(rk) that reads the ith command line
  ! argument, converts it to real(rk) and returns this value
  !
  ! cmd2int(i) 
  ! of type integer that reads the ith command line
  ! argument, converts it to integer and returns this value
  ! 
  ! Note that constant 'rk' and variable 'argu' can be used here. Use
  ! 'internal io' to do the conversion.
  !

  function cmd2real(i) result(r)
    integer, intent(in) :: i
    real(rk) :: r
    CALL getarg(i, argu)
    read(argu, *) r
  end function

  function cmd2int(i) result(r)
    integer, intent(in) :: i
    integer :: r
    CALL getarg(i, argu)
    read(argu, *) r
  end function  

end module cmd_line

    
