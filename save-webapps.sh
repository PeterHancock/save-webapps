echo -e '/*\n/*/\n!/webapps/\n/webapps/*/' > .gitignore
git init && git commit --allow-empty -m 'init' && git add webapps/*.war && git commit -m 'wars'

