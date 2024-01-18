# File: guessinggame.sh

# Give the user on the feedback on their guess
# eq 0 ==> correct guess
# gt 0 ==> guess is too low
# lt 0 ==> guess is too high
function eval_guess {
    if [[ $1 = 0 ]]
    then
	echo "You got it! :-)"
    elif [[ $1 -gt 0 ]]
    then
	echo "Your guess is too low, try again :-("
    else
	echo "Your guess is too high, try again :-("
    fi
}

# $i control the while loop, and keeps the user guessing as long is is not 0
i=1

# get the count of the number of files in the current directory
dir_count=$(ls -1 | wc -l)

echo "Please try to guess the number of files in the current directory."

while [[ $i -ne 0 ]]
do
    echo -n "What's your guess? "
    read guess
    let i=$dir_count-$guess
    eval_guess $i
done
