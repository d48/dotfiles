#!/bin/bash 
# This script copies all generated _site files from a jekyll bootstrap blog,
# commits to a git repo, and pushes it up to github to be publicly viewable

echo "Jumping to d48.github.com repo"
cd ~/Dropbox/Dev/d48.github.com

echo "Copying _site/tags to main repo directory"
cp -r _site/tags .

echo "Commiting to repo"
git add .
git commit -m "latest build of site"

echo "Commiting to repo"
git push

echo "Complete"
exit
