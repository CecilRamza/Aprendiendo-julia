program DF1D

use Funcion

integer,dimension(8)                       ::iv1,iv2
double precision,allocatable,dimension(:,:)::A,exacta
double precision,allocatable,dimension(:)  ::B,f,u

call date_and_time(values=iv1)
t1=dble((iv1(5)*3600))+dble((iv1(6)*60))+dble(iv1(7))+dble((iv1(8)*0.001))

x0=0            !Posición inicial del dominio analizado
xn=acos(-1.)/2. !Posición final del dominio analizado
u0=1.           !Condición de frontera (Dirichlett) en la posición inicial
un=-1.          !Condición de frontera (Dirichlett) en la posición final
n=100           !Número de segmentos del dominio analizado
h=(xn-x0)/n     !Espaciamiento entre nodos

allocate(A(n-2,3))                          !Matriz con el kernel de las diferencias finitas
allocate(B(n-2))                            !Vector igualdad de la ecuación diferencial con condiciones de frontera
exacta=analitica(dble(x0),dble(xn),dble(h)) !Solución analítica
f=coef2(dble(x0),dble(xn),dble(h))          !Vector igualdad de la ecuación diferencial sin condiciones de frontera
A=dble(0.)

do i=1,n-2
 if(i.gt.1) A(i,1)=dble(1./h**2)   !Primer columna de la matriz A
 if(i.lt.n-2) A(i,3)=dble(1./h**2) !Tercer columna de la matriz A
 A(i,2)=coef1()-dble(2./h**2)      !Columna central de la matriz A
 if(i.eq.1)then
  B(i)=f(i)-dble(u0/h**2)          !Primer valor del vector B
 elseif(i.eq.n-2)then
  B(i)=f(i)-dble(un/h**2)          !Último valor del vector B
 else
  B(i)=f(i)                  !Sección central del vector B
 endif
enddo

u=thomas(A,B) !Solución  por método de eliminación Gaussiana

call date_and_time(values=iv2)
t2=dble((iv2(5)*3600))+dble((iv2(6)*60))+dble(iv2(7))+dble((iv2(8)*0.001))
write(*,*)t2-t1

call grafica(exacta,u)
deallocate(A,exacta,B,f,u)

stop
endprogram
