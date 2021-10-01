#!/usr/bin/env bash

current=$(awk '/name="H-S Repo" version/ {print $6}' FS='"' $RELEASE/$REPO_FOLDER/addon.xml)
#EXCPECTED=$(cat draft-version.txt)
echo "repo version: $current" && echo "draft version: ${EXCPECTED:1}"
if [ "$current" != "${EXCPECTED:1}" ]; then
  echo true
else
  echo false
fi