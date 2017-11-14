README.md:
	echo "- Title of the project: Peer-graded Assignment: Bash, Make, Git, and GitHub" > README.md
	printf -- "- Date and time: " >> README.md 
	date >> README.md
	printf -- "- Number of lines: " >> README.md
	wc -l guessinggame.sh | tr -s ' ' | cut -d ' ' -f 2  >> README.md
