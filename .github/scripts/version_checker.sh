#!/usr/bin/env bash

current=$(awk '/name="H-S Repo" version/ {print $6}' FS='"' $RELEASE/$REPO_FOLDER/addon.xml)
expected=$(cat release-version.txt)
echo "repo version: $current" && echo "draft version: $expected"
[ $current != $expected ] && exit 1