# Diferencias finitas 1D para ecuaciones diferenciales de segundo orden

Usaremos el método de Thomas para resolver el sistema de ecuaciones (solo consiste en eliminar los ceros de la matriz A)

La ecuación diferencial que se usa como ejemplo es:

<img src="https://latex.codecogs.com/gif.latex?\frac{d^2}{dx^2}u(x)&plus;ku(x)=\sin{x}" title="\frac{d^2}{dx^2}u(x)+ku(x)=\sin{x}" />

con:

<img src="https://latex.codecogs.com/gif.latex?0<x<\frac{\pi}{2},u(0)=1,u\left(\frac{\pi}{2}\right)=-1" title="0<x<\frac{\pi}{2},u(0)=1,u\left(\frac{\pi}{2}\right)=-1" />

En Funciones.py se encuentra lo siguiente:

coef1     obtiene k, para este caso k=1

coef2     en este caso es el seno de x

analitica es la solución analítica

mat_trid  crea la matriz tridiagonal para el método de Thomas

thomas    resuelve el sistema de ecuaciones por el método de eliminación gaussiana

