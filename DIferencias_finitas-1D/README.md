# Diferencias finitas 1D para ecuaciones diferenciales de segundo orden

Usaremos el método de Thomas para resolver el sistema de ecuaciones (solo consiste en eliminar los ceros de la matriz A)

La ecuación diferencial que se usa como ejemplo es:

![equation]https://latex.codecogs.com/gif.latex?%5Cfrac%7Bd%5E2%7D%7Bdx%5E2%7Du%28x%29&plus;ku%28x%29%3D%5Csin%7Bx%7D

con:

![equation]://latex.codecogs.com/gif.latex?0%3Cx%3C%5Cfrac%7B%5Cpi%7D%7B2%7D%2Cu%280%29%3D1%2Cu%5Cleft%28%5Cfrac%7B%5Cpi%7D%7B2%7D%5Cright%29%3D-1


En Funciones.py se encuentra lo siguiente:

coef1     obtiene k
coef2     en este caso es el seno de x
analitica es la solución analítica
mat_trid  crea la matriz tridiagonal para el método de Thomas
thomas    resuelve el sistema de ecuaciones por el método de eliminación gaussiana
