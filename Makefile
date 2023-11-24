all: build

.PHONY: install-modules
install-modules:
	(rm -rf node_modules && npm install) || rm -f package-lock.json && rm -rf ~/.node-gyp && (npm install || (cd node_modules/canvas && node-gyp rebuild))
	gitbook install

.PHONY: install-gitbook
install-gitbook:
	npm install gitbook-cli@latest node-gyp -g
	# install ebook-convert
	# 		on arch: sudo pacman -S calibre

.PHONY: install
install: install-gitbook install-modules

.PHONY: serve
serve:
	gitbook serve

.PHONY: build
build:
	gitbook build

.PHONY: deploy
deploy:
	./deploy.sh

.PHONY: deploy-all
deploy-all: build ebooks ebooks-cp deploy

.PHONY: ebooks-cp
ebooks-cp:
	cp starknet-development-with-go* _book

.PHONY: ebooks
ebooks: pdf epub mobi

.PHONY: pdf
pdf: pdf-en pdf-ru

.PHONY: pdf-en
pdf-en:
	gitbook pdf ./en starknet-development-with-go.pdf

.PHONY: pdf-ru
pdf-ru:
	gitbook pdf ./ru starknet-development-with-go-ru.pdf

.PHONY: epub
epub: epub-en epub-ru

.PHONY: epub-en
epub-en:
	gitbook epub ./en starknet-development-with-go.epub

.PHONY: epub-ru
epub-ru:
	gitbook epub ./ru starknet-development-with-go-ru.epub

.PHONY: mobi
mobi: mobi-en mobi-ru

.PHONY: mobi-en
mobi-en:
	gitbook mobi ./en starknet-development-with-go.mobi

.PHONY: mobi-ru
mobi-ru:
	gitbook mobi ./ru starknet-development-with-go-ru.mobi

.PHONY: plugins-install
plugins-install:
	gitbook install
