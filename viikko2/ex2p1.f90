program ex2p1
        implicit none

        integer :: x = 2
        integer(kind=16) :: y = 3
        integer :: z = 4

        write(6, "(I1, A, I1, A, I1, A, I25)"), x, "**", y, "**", z, " = ", x**y**z
        write(6, "(A, I1, A, I1, A, I1, A, I4)"), "(", x, "**", y, ")**", z, " = ", (x**y)**z
        write(6, "(I1, A, I1, A, I1, A, I25)"), x, "**(", y, "**", z, ") = ", x**(y**z)

end program ex2p1


