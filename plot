set terminal png size 1920, 1200

set xdata time
set timefmt "%Y-%m-%dT%H:%M:%S"

set output "a.png"
plot "log" using 1:2 title "rchar" with lines, \
     "log" using 1:3 title "wchar" with lines, \
     "log" using 1:4 title "syscr" with lines, \
     "log" using 1:5 title "syscw" with lines, \
     "log" using 1:6 title "rbyte" with lines, \
     "log" using 1:7 title "wbyte" with lines
