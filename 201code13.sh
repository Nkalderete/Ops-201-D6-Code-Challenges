#!/bin/bash

# Ask user for domain name
# domain = variable
# read keeps user input

read -p "Enter a domain name: " domain



# Define function run commands
# First 'echo' writes out at top of comman output in .txt file
# Second 'echo' writes out at end of command output in .txt file
# $domain = user input
# echo "" = added space between lines in output .txt file

function run_commands {
  echo "==== WHOIS OUTPUT ===="
  echo ""
  whois $domain
  echo "*** WHOIS-END ***"
  echo ""
  echo ""
  
  echo "==== DIG OUTPUT ===="
  echo ""
  dig $domain
  echo "*** DIG-END ***"
  echo ""
  echo ""
  
  echo "==== HOST OUTPUT ===="
  echo ""
  host $domain
  echo "*** HOST-END ***"
  echo ""
  echo ""
  
  echo "==== NSLOOKUP OUTPUT ===="
  echo ""
  nslookup $domain
  echo "*** NSLOOKUP-END ***"
}

# Run function and output results to a text file
# $domain.txt- ex. google.com.txt

run_commands > $domain.txt

echo "Results saved to -->  $domain.txt"