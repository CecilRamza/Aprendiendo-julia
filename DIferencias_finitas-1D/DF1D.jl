include("Función.jl")

@time begin

x0=0        #Posición inicial del dominio analizado
xn=pi/2     #Posición final del dominio analizado
u0=1        #Condición de frontera (Dirichlett) en la posición inicial
un=-1       #Condición de frontera (Dirichlett) en la posición final
n=100       #Número de segmentos del dominio analizado
h=(xn-x0)/n #Espaciamiento entre nodos

A=zeros((n-2,3)) #Matriz con el kernel de las diferencias finitas
B=zeros(n-2)     #Vector igualdad de la ecuación diferencial con condiciones de frontera
X=x0:h:xn
x=collect(X)     #Dominio
exacta=zeros(n)    
f=zeros(n-2)
u=zeros(n-2)

exacta=map(analitica,X)  #Solución analítica
f=map(coef2,x0+h:h:xn-h) #Vector igualdad de la ecuación diferencial sin condiciones de frontera

for i in Iterators.countfrom(1,1)
    i>n-2 && break
    if i > 1
        A[i,1] = 1/h^2            #Primer columna de la matriz A
    end
    if i < n-2
        A[i,3] = 1/h^2            #Tercer columna de la matriz A
    end
    A[i,2]=coef1()-2/h^2          #Columna central de la matriz A
    if i == 1
        B[i]=f[i]-u0/h^2          #Primer valor del vector B
    elseif i == n-2
        B[i]=f[i]-un/h^2          #Último valor del vector B
    else
        B[i]=f[i]                 #Sección ccentral del vector B
    end
end

thomas(A,B,u) #Solución por el método de eliminación gaussiana

end

using Plots

plot(x,exacta)
plot!(x[2:n-1],u)
savefig("G.png")
