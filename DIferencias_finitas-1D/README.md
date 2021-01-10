# Diferencias finitas 1D para ecuaciones diferenciales de segundo orden

## Problema a resolver

=========================================================================================

La ecuación diferencial que se usa como ejemplo es:

<img src="https://latex.codecogs.com/gif.latex?\frac{d^2}{dx^2}u(x)&plus;ku(x)=\sin{x}" title="\frac{d^2}{dx^2}u(x)+ku(x)=\sin{x}" />

con las siguientes condiciones de frontera:

<img src="https://latex.codecogs.com/gif.latex?0<x<\frac{\pi}{2},u(0)=1,u\left(\frac{\pi}{2}\right)=-1" title="0<x<\frac{\pi}{2},u(0)=1,u\left(\frac{\pi}{2}\right)=-1" />


La solución analítica es:

<img src="https://latex.codecogs.com/gif.latex?u(x)=\cos{x}\left(1-\frac{x}{2}\right)-\sin{x}" title="u(x)=\cos{x}\left(1-\frac{x}{2}\right)-\sin{x}" />


=========================================================================================

El operador diferencial de segundo órden puede ser representado de la siguiente forma:

<img src="https://latex.codecogs.com/gif.latex?\frac{d^2u}{dx^2}\approx\frac{u(x-h)-2u(x)&plus;u(x&plus;h)}{h^2}" title="\frac{d^2u}{dx^2}\approx\frac{u(x-h)-2u(x)+u(x+h)}{h^2}" />

que en notación indicial puede representarse cómo:

<img src="https://latex.codecogs.com/gif.latex?\frac{d^2u}{dx^2}\approx\frac{u_{i-1}-2u_i&plus;u_{i&plus;1}}{h^2}" title="\frac{d^2u}{dx^2}\approx\frac{u_{i-1}-2u_i+u_{i+1}}{h^2}" />

sustituyendo la ecuación anterior en la ecuación diferencial a resolver:

<img src="https://latex.codecogs.com/gif.latex?\left(\frac{u_{i-1}-2u_i&plus;u_{i&plus;1}}{h^2}&space;\right&space;)&plus;ku_i=\sin{x}" title="\left(\frac{u_{i-1}-2u_i+u_{i+1}}{h^2}\right)+ku_i=\sin{x}" />

se puede reescribir cómo:

<img src="https://latex.codecogs.com/gif.latex?\frac{1}{h^2}u_{i-1}&plus;\left(k^2-\frac{2}{h^2}&space;\right&space;)u_i&plus;\frac{1}{h^2}u_{i&plus;1}=\sin{x}" title="\frac{1}{h^2}u_{i-1}+\left(k^2-\frac{2}{h^2}\right&)u_i+\frac{1}{h^2}u_{i+1}=\sin{x}" />

La ecuación anterior es válida para cualquier punto interno, es decir, sin tocar las fronteras. Para el punto `i=n0`:

<img src="https://latex.codecogs.com/gif.latex?\left(k^2-\frac{2}{h^2}\right)u_i&plus;\frac{1}{h^2}u_{i&plus;1}=\sin{x}-\frac{1}{h^2}u_{i-1}" title="\left(k^2-\frac{2}{h^2}\right)u_i+\frac{1}{h^2}u_{i+1}=\sin{x}-\frac{1}{h^2}u_{i-1}" />

Para el punto`i=n`:

<img src="https://latex.codecogs.com/gif.latex?\frac{1}{h^2}u_{i-1}&plus;\left(k^2-\frac{2}{h^2}\right)u_i=\sin{x}-\frac{1}{h^2}u_{i&plus;1}" title="\frac{1}{h^2}u_{i-1}+\left(k^2-\frac{2}{h^2}\right)u_i=\sin{x}-\frac{1}{h^2}u_{i+1}" />

La matriz con el kernel de diferencias finitas es:

<img src="https://latex.codecogs.com/gif.latex?A=\begin{bmatrix}&space;k-\frac{2}{h^2}&space;&&space;\frac{1}{h^2}&space;&&space;0&space;&&space;0&space;&&space;0&space;&&space;\cdots&space;&0&space;\\&space;\frac{1}{h^2}&space;&&space;k-\frac{2}{h^2}&space;&&space;\frac{1}{h^2}&space;&&space;0&space;&&space;0&space;&&space;\cdots&space;&&space;0&space;&\\&space;0&space;&&space;\frac{1}{h^2}&space;&&space;k-\frac{2}{h^2}&space;&&space;\frac{1}{h^2}&space;&&space;0&space;&&space;\cdots&space;&&space;0&space;\\&space;\vdots&space;&&space;&&space;\ddots&space;&&space;&&space;&&space;\cdots&space;&&space;0&space;\\&space;0&space;&&space;0&space;&&space;0&space;&&space;0&space;&&space;\cdots&space;&&space;\frac{1}{h^2}&space;&&space;k-\frac{2}{h^2}&space;\end{bmatrix}" title="A=\begin{bmatrix}k-\frac{2}{h^2}&\frac{1}{h^2}&0&0&0&\cdots&0\\\frac{1}{h^2}&k-\frac{2}{h^2}&\frac{1}{h^2}&0&0&\cdots&0&\\0&\frac{1}{h^2}&k-\frac{2}{h^2}&\frac{1}{h^2}&0&\cdots&0\\\vdots&&\ddots&&&\cdots&0\\0&0&0&0&\cdots&\frac{1}{h^2}&k-\frac{2}{h^2}\end{bmatrix}" />

que es de tamaño `(n-2)x(n-2)`. La matriz de incógnitas:

<img src="https://latex.codecogs.com/gif.latex?u=\begin{bmatrix}&space;u_1&space;\\&space;u_2&space;\\&space;\vdots&space;\\&space;u_{n-2}&space;\\&space;u_{n-1}&space;\end{bmatrix}" title="u=\begin{bmatrix}u_1\\u_2\\\vdots\\u_{n-2}\\u_{n-1}\end{bmatrix}" />

que es de tamaño `n-2`. La matriz de resultados:

<img src="https://latex.codecogs.com/gif.latex?b=\begin{bmatrix}&space;\sin{x}-\frac{1}{h^2}u_0&space;\\&space;\sin{x}&space;\\&space;\vdots&space;\\&space;\sin{x}&space;\\&space;\sin{x}-\frac{1}{h^2}u_n&space;\end{bmatrix}" title="b=\begin{bmatrix}\sin{x}-\frac{1}{h^2}u_0\\\sin{x}\\\vdots\\\sin{x}\\\sin{x}-\frac{1}{h^2}u_n\end{bmatrix}" />

que es de tamaño `n-2`. Finalmente, el sistema a resolver es:

<img src="https://latex.codecogs.com/gif.latex?Au=b" title="Au=b" />

## Implementación

En todos los códigos se define lo siguiente:

1. `x0=0`        Posición inicial del dominio analizado.
1. `xn=pi/2`     Posición final del dominio analizado, `pi` toma formas diferentes de acuerdo al lenguaje.
1. `u0=1`        Condición de frontera (Dirichlett) en la posición inicial.
1. `un=-1`       Condición de frontera (Dirichlett) en la posición final.
1. `n=100`       Número de segmentos del dominio analizado, a mayor número será menor el error.
1. `h=(xn-x0)/n` Espaciamiento entre nodos (dx).

Además de los siguientes arreglos:

1. `A(n-2,n-2)`  Matriz con el kernel de las diferencias finitas.
1. `B(n-2)`      Vector igualdad de la ecuación diferencial con condiciones de frontera.
1. `exacta(n,2)` Arreglo con la solución analítica (x vs y).
1. `f(n-2)`      Función a la que se encuentra igualada la ecuación diferencial.
1. `u(n-2)`      Vector de incógnitas


Como revisamos anteriormente, la matriz con el kernel de las diferencias finitas sólo tiene información distinta de cero en la diagonal principal y las dos diagonales que la rodean. Para ahorrar memoria sólo se trabaja con la matriz triagonal (método de Thomas), por lo que conviene entonces trabajar con una matriz `A(n-2,3)`. Para construir la matriz tridiagonal hacemos uso de un ciclo y una serie de saltos condicionales. La constante `k` se define en la función `coef1()`. Finalmente se construye el vector `B` usando saltos condicionales para agregar los valores en la frontera.

La solución del sistema de ecuaciones se realiza aplicando el método de eliminación gaussiana, recordando que se está trabajando con una matriz tridiagonal.

## Notas adicionales

La biblioteca `Plots` de `julia` tarda aproximadamente 20 segundos en cargar, lo que retrasa mucho la ejecución del código.
