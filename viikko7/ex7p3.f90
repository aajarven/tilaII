program ex7p3
        use cmd_line
        implicit none
        real :: reaali
        integer :: kokonais

        reaali = cmd2real(1)
        kokonais = cmd2int(2)
        write(*,*) "reaaliluku: ", reaali
        write(*,*) "kokonaisluku: ", kokonais      
end program
