sizes=(1024 512 167 60 144 76 152 120 180 80 160 57 114 40 80 120 29 58 87)
sizen=(512@2x 512 83.5@2x 60 144 76 76@2x 60@2x 60@3x 80 80@2x 57 57@2x 40 40@2x 40@3x 29 29@2x 29@3x)
OLDIFS="$IFS"
IFS=$'\n'
while read f ; do
	for i in "${!sizes[@]}"; do	
		sips -Z ${sizes[$i]} $f -o ${f/.png/_${sizen[$i]}.png}
	done
done