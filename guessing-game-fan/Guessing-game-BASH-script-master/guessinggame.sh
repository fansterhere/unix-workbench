
echo "- HI AND WELCOME TO GUESSING GAME---"
echo "Guess number of files: "
read num

function filenum {
	local number=$(ls -l | wc -l)-1
	echo $number
}

correct=$(filenum)

while [[ $num -ne $correct ]]
do
	if [[ $num -gt $correct ]]
	then
		echo "the number is too high..."
	else
		echo "the number is too low..."
	fi
	echo
	echo "Try again: "
	read num
done

echo "Congrats, this is correct!"

