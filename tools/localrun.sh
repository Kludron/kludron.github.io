#!/bin/bash

sitename="lukewarmsecurityinfo.com"
rootpath=$(pwd)/..

# Remove old files
if [ -d "$rootpath/_site" ]; then
    echo "Removing old site..."
    rm -r "$rootpath/_site"
fi 

# Start Docker instance; then
docker run --name $sitename --rm -e JEKYLL_ENV=development --volume="$rootpath:/srv/jekyll" -p 80:80 -it jekyll/jekyll jekyll serve --watch --port 80
