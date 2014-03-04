#!/bin/bash

CMT_MSG='Updated wars'

if [[ "$1" != "" ]]
then
    CMT_MSG="$CMT_MSG: $1"
fi

git status

if [[ "$?" != "0" ]]
then
    echo -e '/*\n/*/\n!/webapps/\n/webapps/*/' > .gitignore
    git init && git commit --allow-empty -m 'init'
fi

git add webapps/*.war && git commit -m "$CMT_MSG"

