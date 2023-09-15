SHELL           := /bin/bash
DEFAULT_GOAL    := convert
RELEASE_VERSION := $(shell git describe --tags --abbrev=0)

install-deps:
	@echo "Installing dependencies..."
	rm -rf output
	mkdir -p output
	if ! [[ -f ./pandoc-3.1.8-1-amd64.deb ]]; then curl -LO 'https://github.com/jgm/pandoc/releases/download/3.1.8/pandoc-3.1.8-1-amd64.deb'; fi
	if ! [[ -f ./wkhtmltox_0.12.6.1-2.jammy_amd64.deb ]]; then curl -LO 'https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-2/wkhtmltox_0.12.6.1-2.jammy_amd64.deb'; fi
	if (( $EUID != 0 )); then sudo apt-get install -y ./pandoc-3.1.8-1-amd64.deb; else apt-get install -y ./pandoc-3.1.8-1-amd64.deb; fi
	if (( $EUID != 0 )); then sudo apt-get install -y ./wkhtmltox_0.12.6.1-2.jammy_amd64.deb; else apt-get install -y ./wkhtmltox_0.12.6.1-2.jammy_amd64.deb; fi
	cp resume.md output/resume-${RELEASE_VERSION}.md
	cp resume.css output/resume-${RELEASE_VERSION}.css
	cp resume.css resume-${RELEASE_VERSION}.css
.PHONY: install-deps

convert-to-docx: install-deps
	@echo "Converting to DOCX..."
	pandoc resume.md --embed-resources --standalone -f markdown -t docx -c resume-${RELEASE_VERSION}.css -s -o output/resume-${RELEASE_VERSION}.docx
.PHONY: convert-to-docx

convert-to-html: convert-to-docx
	@echo "Converting to HTML..."
	pandoc resume.md --embed-resources --standalone -f markdown -t html -c resume-${RELEASE_VERSION}.css -s -o output/resume-${RELEASE_VERSION}.html
	rm -rf html
	mkdir -p html
	cp output/resume-${RELEASE_VERSION}.html html/index.html
.PHONY: convert-to-html

convert: convert-to-html
	@echo "Converting to PDF..."
	wkhtmltopdf --enable-local-file-access output/resume-${RELEASE_VERSION}.html output/resume-${RELEASE_VERSION}.pdf
	zip -jr output/resume-${RELEASE_VERSION}.zip output/resume-${RELEASE_VERSION}.*
.PHONY: convert

docker:
	@echo "Converting via Docker..."
	rm -rf output
	docker build -t resume-${RELEASE_VERSION} .
	docker create --name resume-${RELEASE_VERSION} resume-${RELEASE_VERSION}
	docker cp resume-${RELEASE_VERSION}:/app/output .
.PHONY: docker
