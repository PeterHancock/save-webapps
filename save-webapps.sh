#!/bin/bash

# cd to Tomcat dir

git status

if [[ "$?" != "0" ]]
then
    echo -e '/*\n/*/\n!/webapps/\n/webapps/*/' > .gitignore
    git init && git commit --allow-empty -m 'init'
fi

git add webapps/*.war && git commit -m 'wars'

