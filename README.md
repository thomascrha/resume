# resume

My personal resume pipeline. Inspired by many but my favorite is [this one](https://github.com/sdsawtelle/markdown-resume) credit to [sdsawtelle](https://github.com/sdsawtelle).

## usage

1. Fork this repo.
2. Edit `resume.md` to your liking. Please for the love of god don't use my resume - it's awful.
3. Run `make convert` to generate the various versions of your resume.
4. Now create a tag that starts with `v` and push it to github. This will trigger a github action that will generate a release with the various versions of your resume as assets.
5. Now you can download the various versions of your resume from the release page.

## goals

* Use a single source of truth for my resume i.e. a markdown file.
* Generate a PDF, HTML, plain-text and DOCX version of my resume.
* Automate the process of updating my resume i.e. using github actions to Generate a new version of my resume and create a github release with the new version as assets.
* Have a simple Makefile that setup the environment and run the pipeline - allowing me to easily generate things locally if I choose.
* Publish the resulting HTML and CSS to a github page.
