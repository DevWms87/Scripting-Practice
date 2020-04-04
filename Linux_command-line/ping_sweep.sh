#!/bin/bash

## setting the positional argument for the user's input in use 
## within the following for loop
PREFIX=$1
echo "Scanning $PREFIX .0/24..."

## Using a for loop to cycle through the ending of any IP address
## to send the live IPs to live_hosts and down IPs to down_hosts
for x in $(seq 1 255)
	do
	TARGET="$PREFIX.$x"
	ping $TARGET -c 1 &>/dev/null && echo "$TARGET is up" >> live_hosts || echo "$TARGET is down" >> down_hosts
	done

