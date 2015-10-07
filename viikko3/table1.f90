program table1
  implicit none
  integer,parameter :: n=4
  integer :: i,j,b(n),c(n,n),d(n,n)
 
  ! ---------- Do not change these loops 
  do i=1,n
     b(i)=i
     do j=1,n
        c(j,i)=10*i+j
     end do
  end do
  ! ----------


  do i=1,n
     do  j=1,n
        d(j,i)=c(j,i)+1
     end do
  end do

  do j=2, n
     do i=2, n
        c(i,j)=d(i-1,j-1)
     end do
  end do

  do j=1,n,2 ! The 3rd number in the do loop is the stride
     do i=1,n,2
        c(i,j)=10*c(i,j)
     end do
  end do
  
  
  ! print statement is a shorter way to write to stdout
  ! print *,var1,var2,...  == write(6,*) var1,var2,...
  ! Intrinsic function sum() gives the sum of all array elements.
  print *, 'answer=',sum(c)

end program table1
