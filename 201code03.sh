#!/bin/bash

function login_history() {
  # Get last login info for all users
  last -a | awk '{print $1, $3, $4, $5, $6}'
}

# Call the function to display login history
login_history



#!/bin/bash 

echo "USER NAME"
read user
last $user 






















sleep 4
echo "Here we go!!"
sleep 2 

echo "201 Code Challenge"

sleep 2

echo "Hello" 

echo "How are you?"
echo "oh wait......"

sleep 4

echo "good bye" 



