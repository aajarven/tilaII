program randomnumber
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

  print '(5f12.6)',r

end program randomnumber

  
