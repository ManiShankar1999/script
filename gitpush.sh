#!/bin/bash
git init

git add .

echo 'Enter the commit message:'
read commitMessage

git commit -m "$commitMessage"

echo 'Enter the origin link:'
read link
git remote add origin $link

echo 'Enter the name of the branch:'
read branch

git push origin $branch

