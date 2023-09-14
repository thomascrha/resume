SHELL      := /bin/bash

RELEASE_VERSION=$(shell git describe --tags --abbrev=0)

install-deps:
	@echo "Installing dependencies..."
	rm -rf output
	mkdir -p output
	wget -nc 'https://github.com/jgm/pandoc/releases/download/3.0.1/pandoc-3.0.1-1-amd64.deb'
	wget -nc 'https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-2/wkhtmltox_0.12.6.1-2.jammy_amd64.deb'
	sudo apt install ./pandoc-3.0.1-1-amd64.deb
	sudo apt install ./wkhtmltox_0.12.6.1-2.jammy_amd64.deb
	cp resume.md output/resume-$(RELEASE_VERSION).md
	cp resume.css output/resume-$(RELEASE_VERSION).css
	cp resume.css resume-$(RELEASE_VERSION).css
.PHONY: install-deps

convert-to-docx: install-deps
	@echo "Converting to DOCX..."
	pandoc resume.md -f markdown -t docx -c resume-$(RELEASE_VERSION).css -s -o output/resume-$(RELEASE_VERSION).docx
.PHONY: convert-to-docx

convert-to-html: convert-to-docx
	@echo "Converting to HTML..."
	pandoc resume.md -f markdown -t html -c resume-$(RELEASE_VERSION).css -s -o output/resume-$(RELEASE_VERSION).html
.PHONY: convert-to-html

convert: convert-to-html
	@echo "Converting to PDF..."
	wkhtmltopdf --enable-local-file-access output/resume-$(RELEASE_VERSION).html output/resume-$(RELEASE_VERSION).pdf
.PHONY: convert
