program ex4p4
  implicit none
  integer,parameter :: n=10
  real :: a(n,n)
  integer :: i,j

  ! --- For the RNG
  integer :: s
  integer,allocatable :: seed(:)

  ! ---- Start of RNG setup
  
  ! Set up the seed
  call random_seed(size=s)
  allocate(seed(s))
  seed=1277345
  call random_seed(put=seed)
  ! Fill array a with random numbers
  ! in the interval [0,1[
  call random_number(a)

  ! ---- End of RNG setup
  
  write(*,*) "ennen:"

  do i=0,n
    do j=0,n
      write(*, "(F7.2)", advance='no') a(i,j)
    end do
    write(*,*) ""
  end do

  where (a.LT.0.5)
    a=0
  elsewhere (a.GE.0.5 .AND. a.LE.0.75)
    a=0.75
  end where

  write(*,*)
  write(*,*) "jälkeen:"

  do i=0,n
    do j=0,n
      write(*, "(F7.2)", advance='no') a(i,j)
    end do
    write(*,*) ""
  end do

end program ex4p4
