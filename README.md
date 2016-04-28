`git ls` and `git each`
=================

Utils for working with sets of repos that are not submodules.

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
`git each <command>` basically runs a `git <command>` in each repository in the current folder. (`git ls` is short for `git each status -s`)
```bash
$ git each log -1
ammonite-reload/ [master]
commit e669ac1c801d645b8b551189f868568169d31aea
Author: Tobias Johansson <tobias.johansson@seal-software.com>
Date:   Tue Apr 12 10:48:42 2016 +0200

    Add readme

circe/ [ops-to-path-printer]
commit 41aeffd09e73fd142f414f3e4543932ff7541a62
Author: Tobias Johansson <tobias.johansson@seal-software.com>
Date:   Sat Apr 23 18:23:45 2016 +0200

    Test

dk/ [master]
commit 4819bd0469290be284ebe555e624efeaa208c003
Author: Tobias Johansson <tobias.j.e.johansson@gmail.com>
Date:   Mon Mar 21 13:54:46 2016 +0100

git-each/ [master]
commit 064159f27f5b5a8cc09c287919d63147c142729a
Author: Tobias Johansson <tobias.johansson@seal-software.com>
Date:   Thu Apr 28 09:48:26 2016 +0200

    Generalize into git-each

git-wip/ [master]
commit 0f0c5823b958e4334e903980b6101e3d024a286b
Author: Mattias Bengtsson <mattias.jc.bengtsson@gmail.com>
Date:   Sat Apr 23 18:15:00 2016 +0200

    Rework: Add flags

machine-setup/ [master]
commit 615aea0a9ec258fe6305101c7bc44a722fcd8cc0
Author: Tobias Johansson <tobias.johansson@seal-software.com>
Date:   Sat Apr 23 15:58:05 2016 +0200

    More

oh-my-fish/ [master]
commit 60b17c9c70db0c6f42b33068c604aca5902633db
Author: Tobias Johansson <tobias.johansson@appland.se>
Date:   Fri Jan 16 09:01:28 2015 +0100

    peco_select_history can take initial query

```
You can of course also perform actions in each repository, like
```bash
git each checkout release/4.1.0
```
or
```bash
git each pull
```
