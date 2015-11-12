function randomnumber(), result(r)
  use cmd_line
  implicit none
  integer,allocatable :: seed(:)
  real,allocatable :: r(:)
  integer :: nseed,n

  n=cmd2int(1)
  allocate(r(n))

  call random_seed(size=nseed)
  allocate(seed(nseed))
  if (command_argument_count()>1) then
     seed=cmd2int(2)
  else
     seed=876324
  end if
  call random_seed(put=seed)
  call random_number(r)
end function randomnumber

  
program ex9p2
        implicit none
        use cmd_line
        real, allocatable(:) :: randomnumber
        real, allocatable(:) :: numerot
        integer :: lukumaara
        real :: ylaraja
        real :: alaraja
        
        lukumaara = cmd2int(1)
        alaraja = cmd2real(3)
        ylaraja = cmd2real(4)
        
        allocate(numerot(lukumaara))   
        numerot = randomnumber()
        write(*,*) count(numerot.GT.alaraja.AND.numerot.LT.ylaraja)/lukumaara

       
end program
