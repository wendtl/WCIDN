#!/bin/bash

# TODO:
# Parse input via case statement in lieu of if statement
# Implement 'remove' function
# Get current date

#BEGIN ENUMERATING FUNCTIONS
#Main function: Displays contents of "dates" file
default()
{
    if [ -f ./dates ]; then
	    cat dates | column -t -s '@'
    fi
}

add()
{
    echo "Type name of event, followed by [ENTER]:"
    read name
    echo "Type start date, followed by [ENTER]:"
    read start
    echo "Type end date, followed by [ENTER]:"
    read end
    LEN=$( cat dates | wc -l ) 
    echo "$LEN@$name@$start@$end" >> dates 
}

#Process first argument and run coordinating function
if [ "$1" == "add" ]; then
    add

elif [ "$1" == "" ]; then
    default

fi
