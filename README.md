# Search local Git working copy from git remote value

Use this tool to search local git working copy directory from git remote value.

## Install

```
$ curl -s https://raw.githubusercontent.com/harobed/search-local-git-working-copy/master/search-local-git-working-copy.sh > /usr/local/bin/search-local-git-working-copy.sh
$ chmod u+x /usr/local/bin/search-local-git-working-copy.sh
$ rehash
```

## Usage

```
$ search-local-git-working-copy.sh "git@github.com:harobed/search-git-local-repository.git" ~/Work/
git@github.com:harobed/search-git-local-repository.git found in git remote in this Git working copy:

* /Users/stephane/Work/github.com/harobed/search-git-local-repository/
```
