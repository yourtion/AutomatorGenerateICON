sizes=(144 96 72 29)
for f in "$@"; do
	for size in ${sizes[@]};do	
		sips -Z $size $f -o ${f/.png/_$size.png}
	done
done