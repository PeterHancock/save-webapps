#!/bin/bash

CMT_MSG='Updated wars'

if [[ "$1" != "" ]]
then
    CMT_MSG="$CMT_MSG: $1"
fi

git status -s

if [[ "$?" != "0" ]]
then
    echo -e '/*\n/*/\n!/webapps/\n/webapps/*/' > .gitignore
    git init &&
    git config user.name "Snapshot" &&
    git config user.email "no@email" &&
    git config alias.st status &&
    git commit --allow-empty -m 'init'
fi

git add webapps/*.war && git commit -m "$CMT_MSG"

