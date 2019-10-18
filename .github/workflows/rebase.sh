#!/usr/bin/env bash

TARGET_BRANCH=master
git remote add apache https://github.com/apache/hadoop-ozone.git
git fetch apache $TARGET_BRANCH
git checkout -b work
git config --global user.email "action@github.com"
git config --global user.name "GitHub Action"

git rebase apache/$TARGET_BRANCH

git remote add dest https://x-access-token:$GITHUB_TOKEN@github.com/$GITHUB_REPOSITORY.git
git push dest work:$TARGET_BRANCH --force-with-lease
