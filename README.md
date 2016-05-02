`git ls` and `git each`
=================

Utils for working with sets of git repos (that are not submodules)

- `git ls` List multiple git repos and show their statuses.
- `git each` Run git commands in multiple git repos at once

Installation
------------
```bash
$ wget https://github.com/tobias-johansson/git-each/raw/master/git-ls
$ wget https://github.com/tobias-johansson/git-each/raw/master/git-each
$ chmod +x git-ls git-each
$ mv git-ls git-each /usr/local/bin # or whatever
```

Usage
-----

### `git ls`
`git ls` shows name, branch and status of each repository in the current folder.
```bash
$ ls
amm-demo/  ammonite-reload/  circe/  dk/  git-ls/  machine-setup/  rest/  tmp/
```
```bash
$ git ls

ammonite-reload/ [master]
A  README.md
?? Test.scala
?? test/

circe/ [some-none-codecs]

dk/ [master]

git-ls/ [HEAD]
?? git-ls

machine-setup/ [master]
 M setup.yaml
```

### `git each`
`git each <command>` basically runs `git <command>` in each repository in the current folder.
```bash
$ git each log --oneline -1
ammonite-reload/ [master]
e669ac1 Add readme

circe/ [ops-to-path-printer]
41aeffd Test

dk/ [master]
4819bd0

git-each/ [master]
d272bbc Update readme for git-each

git-wip/ [master]
0f0c582 Rework: Add flags

machine-setup/ [master]
615aea0 More
```

As you might have spotted, `git ls` is simply shorthand for `git each status -s`


You can of course also perform actions in each repository, like
```bash
git each checkout release/4.1.0
```
or
```bash
git each pull
```

### Filtering

Both `git ls` and `git each` can be run on a subset of repos like so:
```bash
$ git each branch :: circe/ git-each/
circe/ [ops-to-path-printer]
 master
* ops-to-path-printer
 some-none-codecs
 v0.3.0

git-each/ [master]
* master
```
