#!/bin/bash 

supervisor -w app.js,routes,models -e 'js|jade|styl' app.js &
THIS_PID=$!

echo "Run this to kill the script"
echo "kill -9 $THIS_PID"
echo ""

echo "kill -9 $THIS_PID" | pbcopy

guard
