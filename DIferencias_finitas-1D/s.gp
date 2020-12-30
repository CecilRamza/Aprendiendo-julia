 set term png
 set xlabel "x"
 set ylabel "y"
 set output "Gráfica.png"
 plot "exacta.dat" w l lw 2, "aproximada.dat" w l lw 2
 exit
