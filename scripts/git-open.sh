#!/bin/bash
 
git_host='git@github.com:'
git_url='https://github.com/'
remote=`git config --get remote.origin.url`
host=${remote:0:15}
 
if [ $host == $git_host ]
    then
        url=${remote/$git_host/$git_url}
        open $url
    else
        echo "Repo does not have a Github origin"
fi
