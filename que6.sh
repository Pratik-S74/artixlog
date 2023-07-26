artixlog="/home/assignment2/artixlog"
given_date="2021-07-25"
for file in "$artixlog"/*; do
	if [ -f "$file" ]; then
		echo "Reading contents of file: $file"
		cat "$file"
		while IFS= read -r line; do
			timestamp=$(echo "$line" | awk '{print $1}')
			unix_timestamp=$(date -d "$given_date" + "%s")
			given_unix_timestamp=$(date -d "$given_date" +"%s")

			if ((unix_timestamp >= given_unix_timestamp)); then
				echo "$line"
			fi
		done < "$line"	

	fi
done	
 		
