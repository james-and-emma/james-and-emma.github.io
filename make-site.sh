#!/bin/bash

bundle update
bundle exec jekyll build
cd _site
git add -A
if [ $# == 0 ]
then
	git commit -m "Update website"
else
	git commit -m $1
fi
git push
cd ..
