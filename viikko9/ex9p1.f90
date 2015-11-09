program ex9p1
        implicit none
        character(len=80) :: string
        character(len=*), parameter :: etsittavat="1234567890"
        integer :: stat
        integer :: indeksi

        CALL get_command_argument(1, value=string, status=stat)
        if (stat /= 0) then
                write(*,*) "Anna tutkittava merkkijono komentoriviargumenttina"
                CALL exit()
        end if

        indeksi = scan(string, etsittavat)
        if (indeksi == 0) then
                write(*,*) "annetussa merkkijonossa ei ole yhtään numeroa"
        else
                write(*,*) indeksi
        end if
end program

