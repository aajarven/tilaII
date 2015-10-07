program ex2p3
        implicit none

        integer :: i
        integer :: kr

        do i=1,40 
                kr=selected_real_kind(i, 5) 
                print *,i,kr
        end do
        
end program ex2p3
