#!/usr/bin/env bash
# File: guessinggame.sh
function guess {
echo "Welcome to the Guess Game"
actual_data=$(ls -1 | wc -l)
check_data=$(echo $actual_data)
echo "Please guess the number of files in directory: "
while read user_input
do
if [[ $user_input -eq $check_data ]]
then
	echo "You guessed it right!!!"
	break
else
	if [[ $user_input -gt $check_data ]]
	then
	echo "Your guess is high, please try again: "
elif [[ $user_input -lt $check_data ]]
then
	echo "Your guess is low, please try again:"
	fi
fi
done
echo "Thank you for playing"
}
guess

		



