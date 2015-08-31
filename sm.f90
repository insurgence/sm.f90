!  sm.f90 
!
!  FUNCTIONS:
!  sm - Entry point of console application.
!

!****************************************************************************
!
!  PROGRAM: sm - simple numbers
!
!  PURPOSE:  Entry point for the console application.
!
!****************************************************************************

    program sm

    implicit none

    ! Variables

    integer :: i, n, num
    integer, dimension(1000)  :: sn

    ! Body of sm
    
    num = 1
     
    F: do i = 2, 1000
      	n = i - 1
    my: do
       	  if( mod(i,n) /= 0 ) then
        	if(n == 2) then
         		sn(num) = i
         		num = num + 1
		 	exit my
        	end if
         	n = n - 1
         	cycle my
       	  else
         	cycle F
       	  end if
      end do my
    end do F
    
    write(*,*) sn(1:167)
    read *
    
    end program sm