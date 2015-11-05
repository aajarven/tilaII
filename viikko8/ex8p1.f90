program ex8p1
        implicit none
        complex :: testi
        testi = complex(0.3, 0.3)
        write(*,*) sin(testi)
        write(*,*) cos(testi)
        write(*,*) tan(testi)
        write(*,*) sinh(testi)
        write(*,*) cosh(testi)
        write(*,*) tanh(testi)
        write(*,*) exp(testi)
        write(*,*) log(testi)
        write(*,*) bessel_j0(testi) ! Error: 'x' argument of 'bessel_j0' intrinsic at (1) must be REAL
end program
