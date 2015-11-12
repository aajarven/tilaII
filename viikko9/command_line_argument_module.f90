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
    integer :: stat
    real(rk) :: r
    integer :: length
    CALL get_command_argument(i, argu, length, stat)
    if (stat /= 0 ) then
      r = huge(r)
    else
      read(argu, *, iostat=stat) r
      if (stat /= 0) then
              r = huge(r)
      end if
    end if
  end function

  function cmd2int(i) result(r)
    integer, intent(in) :: i
    integer :: stat
    integer :: length
    integer :: r
    CALL get_command_argument(i, argu, length, stat)
    if (stat /= 0 ) then
      r = huge(r)
    else
      read(argu, *, iostat=stat) r
      if (stat /= 0) then
              r = huge(r)
      end if
    end if
  end function
end module cmd_line
    
