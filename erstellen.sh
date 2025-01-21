anzahl_ordner=12

for i in $(seq  1 $anzahl_ordner); do
	ordnername="Blatt_$i"
	mkdir $ordnername

	texdatei="${ordnername}/${ordnername}.tex"
	echo "%Dies ist Datei $texdatei" > $texdatei

	echo "\documentclass{article}" >> $texdatei
	echo "\usepackage{silence}" >> $texdatei
	echo "\WarningFilter{latex}{You have requested package}" >> $texdatei
	echo "\WarningFilter{latex}{Empty bibliography}" >> $texdatei
	echo "\WarningFilter{latex}{Interword spacing}" >> $texdatei
	echo "\newcommand{\tutor}{}" >> $texdatei
	echo "\newcommand{\modul}{condensed matter}" >> $texdatei
	echo "\newcommand{\sheet}{$i}" >> $texdatei
	echo "\newcommand{\sheetauthor}{Elin Bayer}" >> $texdatei

	echo "\usepackage{../style}" >> $texdatei
	echo "\begin{document}" >> $texdatei
	echo "\end{document}" >> $texdatei
done
