function factorial(k) result(tulos)
        implicit none
        integer, intent(in) :: k
        integer :: tulos
        integer :: i
        tulos = 1

        do i=k, 1, -1
                tulos = tulos * i
        end do

end function factorial

function sinApprox(x, termimaara) result(tulos)
        implicit none
        real, intent(in) :: x
        integer, intent(in) :: termimaara
        real :: tulos
        integer :: factorial
        real :: termi
        integer :: i
        tulos = 0
        
        do i=0, termimaara
                tulos = tulos + ((-1)**i)*(x**(2*i+1))/factorial(2*i+1)
        end do
end function

program ex7p2
        implicit none
        real :: sini
        real :: taylorSini2
        real :: taylorSini4
        real :: sinApprox

        sini = sin(0.5)
        taylorSini2 = sinApprox(0.5, 2)
        taylorSini4 = sinApprox(0.5, 4)

        write (*,*) "intrinsic: ", sini
        write (*,*) "kahdella termillä: ", taylorSini2
        write (*,*) "neljällä termillä: ", taylorSini4
        write (*,*) "kaksitermisen ja intrinsicin ero: ", abs(sini-taylorSini2)
        write (*,*) "nelitermisen ja intrinsicin ero: ", abs(sini-taylorSini4)
end program
        
