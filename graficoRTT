set xlabel "size S [bytes]"
set ylabel "RTT [ms]"

set term png;
set output "plotRTT.png"

plot "misura.dat" using 1:2 title "min RTT" with linespoint, "misura.dat" using 1:3 title "avg RTT" with linespoint, "misura.dat" using 1:4 title "max RTT" with linespoint
