program ex2p4
        implicit none
        integer :: n
        real(KIND=16) :: h=0.0

        do n=1, 5000000 ! harmoninen summa n=5 000 000 asti kind=4
                h = h + 1.0_4/real(n,4)
        end do
        write(*, *) "kind=4:", h

        !sama kuin edellä mutta kind=8. Miten tehdä ilman copypastekoodia? koetin antaa real-funktiolle halutun kindin jälkimmäisenä
        !parametrina, mutta sain virheilmoituksen väärästä tyypistä
        h=0
        do n=1, 5000000
                h = h + 1.0_8/real(n,8)
        end do
        write(*, *) "kind=8:", h

        h=0
        do n=1, 5000000
                h = h + 1.0_10/real(n,10)
        end do
        write(*, *) "kind=10:", h

        h=0
        do n=1, 5000000
                h = h + 1.0_16/real(n,16)
        end do
        write(*, *) "kind=16:",h

end program ex2p4
