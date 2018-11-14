#!/usr/bin/env bash

if [[ -z $2 ]]; then
  echo "Use $0 <git_remote_pattern> <start_path_where_search>"
  exit 1
fi

NOT_FOUND=1
for p in $(find $(realpath $2) -type d -name .git); do
  cd $(dirname $p)
  if git remote -v | grep --quiet "$1"; then
    if [[ $NOT_FOUND -eq "1" ]]; then
      echo -e "$1 found in git remote in this Git working copy:\n"
      NOT_FOUND=0
    fi
    echo "* $(pwd)"
  fi
done

if [[ $NOT_FOUND -eq "1" ]]; then
  echo "$1 not found"
fi
