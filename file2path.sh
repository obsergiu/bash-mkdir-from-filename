for file in *.txt; do
    year=`echo "${file:7:4}"`
    month=`echo "${file:15:2}"`
    day=`echo "${file:18:2}"`
   
    dir="./$year/$month/$day/"
    if [ ! -d "$dir" ]; then
  		mkdir -p "$dir"
	fi

    mv "$file" "$dir"
    printf "."
done