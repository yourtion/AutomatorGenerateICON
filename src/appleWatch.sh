sizes=(48 55 58 80 87 88 172 196)
sizen=(24x24@2x 27.5x27.5@2x 29x29@2x 40x40@2x 29x29@3x 44x44@2x 86x86@2x 98x98@2x)
OLDIFS="$IFS"
IFS=$'\n'
while read f ; do
	for i in "${!sizes[@]}"; do	
		sips -Z ${sizes[$i]} $f -o ${f/.png/_${sizen[$i]}.png}
	done
done