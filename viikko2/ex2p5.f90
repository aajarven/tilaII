program ex2p4
        implicit none
        real(KIND=4)  :: huge4
        real(KIND=8)  :: huge8
        real(KIND=10) :: huge10
        real(KIND=16) :: huge16

        write(*, *) "kind=4:", huge(huge4)
        write(*, *) "kind=8:", huge(huge8)
        write(*, *) "kind=10:", huge(huge10)
        write(*, *) "kind=16:", huge(huge16)

end program ex2p4
