program ex2p6
        implicit none
        real :: x = 1

        write(*,*) "1+epsilon: ", x+epsilon(x)
        write(*,*) "1+epsilon/2: ", x+epsilon(x)/2
        write(*,*) "1-epsilon: ", x-epsilon(x)
        write(*,*) "1-epsilon/2: ", x-epsilon(x)/2
end program ex2p6
