SHELL      := /bin/bash

TIMESTAMP=$(date +%s)

install-deps:
	@echo "Installing dependencies..."
	wget -nc 'https://github.com/jgm/pandoc/releases/download/3.0.1/pandoc-3.0.1-1-amd64.deb'
	wget -nc 'https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-2/wkhtmltox_0.12.6.1-2.jammy_amd64.deb'
	sudo apt install ./pandoc-3.0.1-1-amd64.deb
	sudo apt install ./wkhtmltox_0.12.6.1-2.jammy_amd64.deb
.PHONY: install-deps

convert-to-html: install-deps
	@echo "Converting to HTML..."
	mkdir -p output
	pandoc resume.md -f markdown -t html -c resume.css -s -o output/resume-${TIMESTAMP}.html
.PHONY: convert-to-html

convert-to-pdf: convert-to-html
	@echo "Converting to PDF..."
	mkdir -p output
	wkhtmltopdf --enable-local-file-access output/resume-${TIMESTAMP}.html output/resume-${TIMESTAMP}.pdf
.PHONY: convert-to-pdf

