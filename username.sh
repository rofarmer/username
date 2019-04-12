#! /bin/bash
# username.sh
# Rob Farmer
echo "Enter username: "
read username
while echo "$username" | egrep -v "^[a-z][a-z0-9_]{2,11}$" > /dev/null 2>&1
do
	echo "You must enter a valid username!"
	echo "Enter a username consisting of a lowercase letter: "
	echo "Acceptable characters are lowercase, digits, or underscores: "

	read username
done
echo "Thank you"
