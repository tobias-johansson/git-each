git ls
======

Utility to list multiple git repos and show their statuses.


Installation
------------
```bash
$ wget https://github.com/tobias-johansson/git-ls/raw/master/git-ls
$ chmod +x git-ls
$ mv git-ls /usr/local/bin # or whatever
```

Usage
-----

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
