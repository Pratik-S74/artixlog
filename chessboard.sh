print_chessboard() {
	chessboard=(
		"  " "##" "  " "##" "  " "##" "  " "##"
		"##" "  " "##" "  " "##" "  " "##" "  " 
		"  " "##" "  " "##" "  " "##" "  " "##"
		"##" "  " "##" "  " "##" "  " "##" "  "
		"  " "##" "  " "##" "  " "##" "  " "##"
		"##" "  " "##" "  " "##" "  " "##" "  "
		"  " "##" "  " "##" "  " "##" "  " "##"
		"##" "  " "##" "  " "##" "  " "##" "  "
)

	for((i=0;i<9;i++)); do
		for((j=0;j<8;j++)); do
			if (( (i+j) % 2 == 0 )); then
				printf "\e[47m${chessboard[i*8+j]}\e[0m"
			else
				printf "\e[100m${chessboard[i*8+j]}\e[0m"	
			fi
		done
		printf "\n"
	done
	}
print_chessboard
