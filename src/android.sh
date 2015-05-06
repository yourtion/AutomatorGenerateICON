sizes=(144 96 72 48)
OLDIFS="$IFS"
IFS=$'\n'
while read f ; do
	for size in ${sizes[@]};do
		sips -Z $size $f -o ${f/.png/_$size.png}
	done
done