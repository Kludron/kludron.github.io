#!/bin/bash

sitename="lukewarmsecurityinfo.com"
rootpath=$(pwd)/..
isdaemon=true
runstring="jekyll serve --watch --port 80 --future --drafts"

while [[ $# -gt 0 ]]; do
  case $1 in
    --no-daemon)
      isdaemon=false
      shift ;;
    --dry-run)
      isdaemon=false
      runstring="jekyll build"
      shift ;;
    *)
      echo "Unknown argument: $1"
      exit;
  esac
done

# Run as daemon
if [[ $isdaemon == true ]]; then
  args="-d"
fi

# Kill old docker instance
if [ "$(docker container inspect -f '{{.State.Status}}' $sitename)" == "running" ]; then
  echo -n "Killing old docker instance... "
  docker kill $sitename
  sleep 1
fi

# Remove old files
if [ -d "$rootpath/_site" ]; then
    echo -n "Removing old site... "
    rm -r "$rootpath/_site"
    echo "Removed"
fi 

# Start Docker instance; then
echo -n "Starting docker instance... "
docker run $args --name $sitename --rm -e JEKYLL_ENV=development --volume="$rootpath:/srv/jekyll" -p 80:80 -it jekyll/jekyll $runstring 
