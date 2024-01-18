all: README.md guessinggame.sh

README.md: guessinggame.sh

	# add the project title
	echo "# Project Title:" > $@
	echo "Coursera\nUnix Workbench\nPeer Graded Assignment\nBash, Make, Git, and GitHub" >> $@
	# add the current date/time
	echo "## Date and time 'make' was last run: " >> $@
	date >> $@
	# count the number of lines in the target file
	# that aren't blank or a comment
	echo "## Number of lines of code in $<" >> $@
	egrep -ve '^\s*$$' $< | egrep -cve '^#' >> $@
