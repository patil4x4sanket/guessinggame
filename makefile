README.md:
	echo "## Title of the Project :: " > README.md
	echo "# *Guessing-Game*" >> README.md
	echo "" >> README.md

	echo "*make was executed on ::*" >> README.md
	date >> README.md
	echo "" >> README.md

	echo "*The number of lines of codes are ::*" >> README.md
	wc -l guessinggame.sh >> README.md
