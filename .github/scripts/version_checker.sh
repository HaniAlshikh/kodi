#!/usr/bin/env bash

current=$(awk '/name="H-S Repo" version/ {print $6}' FS='"' $RELEASE/$REPO_FOLDER/addon.xml)
expected=$(cat draft-version.txt)
echo "repo version: $current" && echo "draft version: ${expected:1}"
if [ "$current" != "${expected:1}" ]; then
  echo true
else
  echo false
fi