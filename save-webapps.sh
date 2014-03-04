#!/bin/bash

git status

if [[ "$?" != "0" ]]
    echo -e '/*\n/*/\n!/webapps/\n/webapps/*/' > .gitignore
    git init && git commit --allow-empty -m 'init'
fi

git add webapps/*.war && git commit -m 'wars'

