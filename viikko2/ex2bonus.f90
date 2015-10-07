program bonus
        implicit none
        integer(KIND=1) :: luettava=0

        write(*,"(A)",advance='no') "Anna luku: "
        read(*,*) luettava;
        write(6,'(b8.8)') luettava

end program bonus
