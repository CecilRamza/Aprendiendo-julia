module Funcion

contains

function analitica(x0,xn,h)
double precision,allocatable,dimension(:,:)::analitica
double precision,intent(in)                ::x0,xn,h

allocate(analitica(2,int((xn-x0)/h)))

do i=1,size(analitica(1,:))
 analitica(1,i)=x0+h*(i-1)
 analitica(2,i)=cos(analitica(1,i))*(1.-analitica(1,i)/2.)-sin(analitica(1,i))
enddo

return
endfunction

function coef2(x0,xn,h)
double precision,allocatable,dimension(:)::coef2
double precision,intent(in)              ::x0,xn,h

allocate(coef2(int((xn-x0)/h)-2))

do i=1,size(coef2)
 coef2(i)=sin(x0+(h*i))
enddo

return
endfunction

double precision function coef1()

coef1=1.

return
endfunction

function thomas(A,B)
double precision,allocatable,dimension(:)::thomas
double precision,dimension(:,:)          ::A
double precision,dimension(:)            ::B
double precision                         ::piv

n=size(A(:,1))
allocate(thomas(n))

do i=1,n-1
 piv=-A(i+1,1)/A(i,2)
 A(i+1,2)=piv*A(i,3)+A(i+1,2)
 B(i+1)=piv*B(i)+B(i+1)
enddo

thomas(n)=B(n)/A(n,2)

do i=n-1,1,-1
 thomas(i)=(B(i)-A(i,3)*thomas(i+1))/A(i,2)
enddo

return
endfunction

subroutine grafica(g1,g2)
double precision,dimension(:,:),intent(in)::g1
double precision,dimension(:),intent(in)  ::g2

open(1,file="exacta.dat")
open(2,file="aproximada.dat")
 do i=1,size(g2)
  write(1,*)g1(1,i),g1(2,i)
  write(2,*)g1(1,i),g2(i)
 enddo
close(2)
close(1)

open(1,file="s.gp")
 write(1,*)'set term png'
 write(1,*)'set xlabel "x"'
 write(1,*)'set ylabel "y"'
 write(1,*)'set output "Gráfica.png"'
 write(1,*)'plot "exacta.dat" w l lw 2, "aproximada.dat" w l lw 2'
 write(1,*)'exit'
close(1)

call system("gnuplot s.gp")

endsubroutine

endmodule
