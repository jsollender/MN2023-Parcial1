module mcd
use mod_prec
implicit none
!   PARCIAL 1 - PROBLEMA 1  
!   M O D U L O   F U N C I O N   M. C. D.
!   MERCADO, Javier
!   SOLLENDER, Jazmín
    

contains
    function MCDEuclides(m,p) 
    !Declaracion de variables
    integer(ix)             :: MCDEuclides
    integer(ix), intent(in)     :: m
    integer(ix), intent(in)     :: p
    
    !Declaracion de variables auxialares
    integer(ix)             :: resto , divd , divs, aux, ite
    divd = m
    divs = p
   
    if (m < p) then
    
        !write(*,*) "El primer numero es menor que el segundo. Lo tuve que dar vuelta... >:("
        
        aux = divd
        divd = divs
        divs = aux
    
    end if
    
    !Bloque de procesamiento
    
    ite = 1
    do 
        resto = mod(divd, divs)
        if (resto == 0_ix) then
            MCDEuclides = divs
            exit
        end if
    
        !write(*,*) "dividendo" , divd , "divisor" , divs , "resto" , resto
        divd = divs
        divs = resto
        

        ite = ite + 1
    end do
	
	write(*,'(X, A25, I10, A3, I10, A16)') "Para calcular el MCD de", m, "y", p, "necesitamos..." 
    write(*,'(A11, X, I4, X, A23)') "---------->", ite, "iteraciones <----------"
    write(*,*) ""
    
    end function MCDEuclides



end module mcd
