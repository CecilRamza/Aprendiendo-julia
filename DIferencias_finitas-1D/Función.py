import numpy as np 

def coef1():
    c=1
    return c

def coef2(x):
    f=np.sin(x)
    return f

def analitica(x):
    U=np.cos(x)*(1-x/2)-np.sin(x)
    return U

def mat_trid(matriz,i,j,v):
    d=j-i
    j=d+1
    matriz[i,j]=v

def thomas(a,b):
    n=a.shape[0]
    for i in range(n-1):
        piv=-a[i+1,0]/a[i,1]
        a[i+1,1]=piv*a[i,2]+a[i+1,1]
        b[i+1]=piv*b[i]+b[i+1]
    u=np.zeros((n),dtype=np.float64)
    u[n-1]=b[n-1]/a[n-1,1]
    i=n-2
    while i>=0:
        u[i]=(b[i]-a[i,2]*u[i+1])/a[i,1]
        i=i-1
    return u
