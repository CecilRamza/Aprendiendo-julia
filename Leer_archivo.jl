#--------------------------------------------------------------------
#
# Creado por: Manuel Ortiz Osio
# Editado por última vez: Manuel Ortiz Osio 10/11/20
#
#--------------------------------------------------------------------
#
#
# Trabajando con archivos de texto
#
#
#--------------------------------------------------------------------
#
#
# Para comenzar a manejar un archivo necesitamos "abrirlo" antes:
#
archivo=open("Datos.dat")
#
# archivo ahora es nuestro "conector", para cerrar el archivo:
#
close(archivo)
#
# También es posible hacer lo siguiente:
#
open("Datos.dat") do archivo

end
#
# Realicemos unas tareas básicas y necesarias:
#
duración,tamaño=open("Datos.dat") do archivo
    lineas=0
    tiempo=@elapsed for i in eachline(archivo)
        lineas+=1
    end
    (tiempo,lineas)
end

println(duración)
println(tamaño)

#
# 
#
using DelimitedFiles

datos=readdlm("Datos.dat")

@show datos
