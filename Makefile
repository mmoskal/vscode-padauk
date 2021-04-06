all:
	vsce package

VER = $(shell grep '"version"' package.json | sed -e 's/.*: "//; s/".*//')
install: all
	code --install-extension padauk-$(VER).vsix

