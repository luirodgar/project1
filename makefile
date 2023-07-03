all: readme guessinggame git

readme: 
	echo "## The name of the project is *project1*" >README.md
	echo "" >>README.md
	my_date=$(date)
	echo "Make was executed last time" `date` >>README.md
	echo $(date) >>README.md

guessinggame: guessinggame.sh
	echo -n "The number of lines of guessingname.sh " >>README.md
	wc -l guessinggame.sh |cut -d" " -f1 >>README.md

git:
	git add -A
	git commit -m "Commit for project1"
	git push -u origin master

