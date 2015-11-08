module series
contains
  function geometricSeries(start, coeff, n) result(taulukko)
    real, intent(in) :: start, coeff
    integer :: n
    real, dimension(n) :: taulukko
    integer :: i
    taulukko(1) = start
    do i=2,n
        taulukko(i)=taulukko(i-1)*coeff
    end do
  end function
end module series
        
