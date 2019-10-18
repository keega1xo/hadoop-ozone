#!/usr/bin/env bash

CURRENT_BRANCH=master
TARGET_BRANCH=master
git remote add apache https://github.com/apache/hadoop-ozone.git
git branch
git show-ref
git fetch apache $TARGET_BRANCH
git checkout -b $CURRENT_BRANCH origin/$CURRENT_BRANCH
git config --global user.email "action@github.com"
git config --global user.name "GitHub Action"

git rebase apache/$TARGET_BRANCH

git remote set-url origin  https://x-access-token:$GITHUB_TOKEN@github.com/$GITHUB_REPOSITORY.git
git push origin $CURRENT_BRANCH:$TARGET_BRANCH --force-with-lease
