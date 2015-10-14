program ex6p1
        implicit none
        integer :: i1,i2,i3,i4,i5,i6,i7,i8,i9,i10

!        read *,i1,i2,i3,i4,i5,i6
!        read *,i7,i8,i9,i10
!        write(*,*) "a:"
!        write(*,*) i1,i2,i3,i4,i5,i6,i7,i8,i9,i10

        read '(4i10)',i1,i2,i3,i4,i5,i6
        read '(4i10)',i7,i8,i9,i10
        write(*,*) "b:"
        write(*,*) i1,i2,i3,i4,i5,i6,i7,i8,i9,i10

end program
