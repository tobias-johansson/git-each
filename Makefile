USER_INSTALL_PREFIX=$(HOME)/.local
SYSTEM_INSTALL_PREFIX=/usr/local

.PHONY: user-install install

all:

install:
	install -D git-each git-ls $(SYSTEM_INSTALL_PREFIX)/bin/

user-install:
	install -D git-each git-ls $(USER_INSTALL_PREFIX)/bin/
