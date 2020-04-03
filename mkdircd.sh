##!/bin/bash

## This uses the first argument entered by the user to create a 
## directory with the argument as the name
mkdir $1 2>/dev/null
## This moves the user into the newly created directory
cd $1

## This uses the second argument entered by the user to create a 
## new file with the argument as the name
touch $2 2>/dev/null

## This opens the new file so the user can edit after running the 
## script
nano $2


