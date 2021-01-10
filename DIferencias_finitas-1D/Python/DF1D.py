"""

Creado por: Manuel Ortiz Osio
Modificado el: 14/11/2020

"""

from Función import *
import numpy as np 
import matplotlib.pyplot as plt
from time import time

tiempo1=time()

x0=0         #Posición inicial del dominio analizado
xn=np.pi/2   #Posición final del dominio analizado
u0=1         #Condición de frontera (Dirichlett) en la posición inicial
un=-1        #Condición de frontera (Dirichlett) en la posición final
n=100        #Número de segmentos del dominio analizado
h=(xn-x0)/n  #Espaciamiento entre nodos

A=np.zeros((n-1,3))  #Matriz con el kernel de las diferencias finitas
B=np.zeros((n-1))      #Vector igualdad de la ecuación diferencial con condiciones de frontera
x=np.linspace(x0,xn,n) #Vector del dominio
U=analitica(x)         #Solución analítica
f=coef2(x)             #Vector igualdad de la ecuación diferencial sin condiciones de frontera

for i in range(n-1):
    if i>=1:
        A[i,0]=1/h**2
#        mat_trid(A,i,i-1,1/h**2)   #Primer columna de la matriz A
    if i<=n-3:
        A[i,2]=1/h**2
#        mat_trid(A,i,i+1,1/h**2)   #Tercer columna de la matriz A
    A[i,1]=coef1()-2/h**2
#    mat_trid(A,i,i,coef1()-2/h**2) #Columna central de la matriz A
    if i==0:
        B[i]=f[i+1]-u0/h**2           #Primer valor del vector B
    elif i==n-2:
        B[i]=f[i+1]-un/h**2           #Último valor del vector B
    else:
        B[i]=f[i+1]                   #Sección central del vector B

u=thomas(A,B)                       #Solución por método de eliminación Gaussiana

tiempo2=time()-tiempo1
print(tiempo2)

plt.plot(U,'r--',u)
plt.ylabel('y')
plt.xlabel('x')
plt.show()
