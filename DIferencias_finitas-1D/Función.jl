function analitica(x)
    cos(x)*(1-x/2)-sin(x)
end


function coef1()
    1.
end

function coef2(x)
    sin(x)
end

function thomas(A,B,u)
    n=length(A[:,1])
    for i in Iterators.countfrom(1,1)
        i>n-1 && break
        piv=-A[i+1,1]/A[i,2]
        A[i+1,2]=piv*A[i,3]+A[i+1,2]
        B[i+1]=piv*B[i]+B[i+1]
    end
    u[n]=B[n]/A[n,2]
    for i in Iterators.countfrom(n-1,-1)
        i<1 && break
        u[i]=(B[i]-A[i,3]*u[i+1])/A[i,2]
    end
end
