#!/bin/bash

# Get CPU information 
cpu=$(lshw | grep -A 5 '*-cpu')

# Get RAM information 
ram=$(lshw | grep -A 3 '*-memory')

# Get display information 
display=$(lshw | grep -A 12 '*-display')

# Get network information 
network=$(lshw | grep -A 16 '*-network')

# Output for each component
echo "CPU: $cpu"
echo "Memory: $ram"
echo "Display: $display"
echo "Network: $network"

# Get BIOS information
BIOS=$(dmidecode | grep -A 14 'BIOS Information' )
echo "BIOS: $BIOS"

