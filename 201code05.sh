#!/bin/bash

# Display the running processes
echo "Running processes:"
ps -e

# Ask the user for a PID
read -p "Enter PID to KILL: " pid

# Kill specified PID
for process in $(ps -e); do
if [ "$process" == "$pid" ]; then
kill $pid
echo "PID $pid killed."

