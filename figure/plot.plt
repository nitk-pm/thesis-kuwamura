set datafile separator ","
set style fill solid border lc rgb "black"
set key outside
set grid
set boxwidth 1
set xtics mirror rotate by -90 offset -1.5,0
set yrange [0:80]
set fontpath "."
set terminal pdfcairo size 5,5 font "HaranoAjiMincho"
set output "sum.pdf"
plot	"sum.csv" using ($0*5+0):2 with boxes lw 2 lc rgb "light-blue" title "来店者新規度",\
		"sum.csv" using ($0*5+1):3 with boxes lw 2 lc rgb "light-green" title "やみつき度",\
		"sum.csv" using ($0*5+2):4:xtic(1) with boxes lw 2 lc rgb "light-red" title "万人受け度",\
		"sum.csv" using ($0*5+3):5 with boxes lw 2 lc rgb "violet" title "食べログ上の点数"
unset output
