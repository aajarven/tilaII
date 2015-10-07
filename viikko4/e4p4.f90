program ex4p4
  implicit none
  real :: a(6,10)
  character(len=10) :: c(4)
  complex :: z(20)
  integer :: i,j

  call assign_values()

  write(*,*) "Reaaliluvut:"
  do i=1,10
    do j= 1,6
      write(*, "(F9.6)", advance='no') a(j,i)
    end do
    write(*,*) ""    
  end do


  write(*,*) ""
  write(*,*) "Merkkijonot:"
  do i=1,4
    write(*,"(A10)") c(i)
  end do

  write(*,*) ""
  write(*,*) "Kompleksiluvut:"
  do i=0,20
    if (AIMAG(z(i)).LT.0) then
      write(*,"(F9.6,A3,F8.6,A2)") real(z(i)), " + ", aimag(z(i)), "*i"
    else
      write(*,"(F9.6,A3,F8.6,A2)") real(z(i)), " - ", aimag(z(i)), "*i"
    end if 
  end do 

contains

  subroutine assign_values()
    ! Local subroutine to assign values to arrays
    integer :: s
    integer,allocatable :: seed(:)
    real :: zr(20),zi(20),zzr,zzi
    ! ---- Start of RNG setup    
    ! Set up the seed
    call random_seed(size=s)
    allocate(seed(s))
    seed=1277345
    call random_seed(put=seed)
    ! Fill arrays a with random numbers
    ! in the interval [0,1[
    call random_number(a)
    call random_number(zr)
    call random_number(zi)
    z=cmplx(zr,zi)
    ! ---- End of RNG setup    
    c=['0123456789','abcdefghij','ABCDEFGHIJ','klmnopqrst']
    return
  end subroutine assign_values



end program ex4p4

