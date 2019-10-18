#!/usr/bin/env bash

git remote add apache https://github.com/apache/hadoop-ozone.git
git fetch apache
git checkout -b work
git rebase apache/master

git remote set-url origin https://x-access-token:$GITHUB_TOKEN@github.com/$GITHUB_REPOSITORY.git
git config --global user.email "action@github.com"
git config --global user.name "GitHub Action"

git push work:master --force-with-lease
