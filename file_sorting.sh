#intial_dir=$(pwd)
echo "enter the directory you want to find"
read NAME
if [ -d "$NAME" ]; then
	#PARENT_DIR=$(dirname "$NAME")
	cd "$NAME"
	echo "you are now in: $(pwd)"
	ls
	#list all the file one by one and sort them
	ls -1A | sort
	#create the new directory inside given directory
	mkdir "sort"
	find . -maxdepth 1 -type f -exec cp {} sort/ \;
	moved_files=$(find sort/ -maxdepth 1 -type f | wc -l)
	echo "Number of files moved is: $moved_files"
	#if [ $? -eq 0 ]; then
		#num_of_files=$(ls -1 "$PARENT_DIR/sort" | wc -l)
		#echo "files moved successfully, number of files moved: $num_of_files"
	#else
		#echo "failed to move files"
	#fi
else
	echo "error: No such directory exists"
fi	
