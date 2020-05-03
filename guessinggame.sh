#!/usr/bin/env bash

echo 'Welcome To Guessing-Game, try your luck!'

function filecnt {

	fileCount=$(pwd | ls -l | grep ^- | wc -l)
	while [[ true ]]
	do
		echo ''
		echo 'Enter how many files are there in the current directory ? :: '
		read num

		#input validation, only integer inputs are accpted
	        if [[ $num ]] && [ $num -eq $num 2>/dev/null ]
        	then
                	echo ""
	        else
        	        echo "$num is not an integer, please enter an integer.."
                	continue
	        fi

		#checking the guess
		if [[ $num -lt $fileCount-1 ]]
		then
			echo 'Your guess is too low please try again and guess a higher number..'
		elif [[ $num -lt $fileCount ]]
		then
			echo 'Your guess is near, but not correct, please guess a little higher number..'
		elif [[ $num -eq $fileCount ]]
		then
			echo 'Congrats!!, you guessed the correct number of files in the current directory..'
			break
		elif [[ $num -gt $fileCount+1 ]]
		then
			echo 'Your is too high, please guess a little lower number..'
		else
			echo 'Your guess is near, but not correct, please try guessing a little lesser number..'
		fi
	done
}

#calling the function
filecnt
