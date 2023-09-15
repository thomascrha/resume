# resume

Anyone's personal resume pipeline. Inspired by many but my favourite is [this one](https://github.com/sdsawtelle/markdown-resume) credit to [sdsawtelle](https://github.com/sdsawtelle).

## usage

1. Fork this repo.
2. Edit `resume.md` to your liking. Please for the love of god don't use my resume - it's awful.
3. Run `make convert` to generate the various versions of your resume. This way you can fine tune the output locally.
4. You need to enable Pages via Action in Settings->Pages->Source. Make sure you enable write access to your GitHub Actions Settings->Actions->General->Workflow Permissions
5. Now create a tag that starts with `v` and push it to GitHub. This will trigger a GitHub action that will generate a release with the various versions of your resume as assets.
6. Now you can download the various versions of your resume from the release page and access your resume at `https://<your-github-username>.github.io/resume` - note if you forked it into `doperesume` it would be `/doperesume` instead of `/resume`.

## goals

* Use a single source of truth for my resume i.e. a markdown file.
* Generate a PDF, HTML, plain-text and DOCX version of my resume.
* Automate the process of updating my resume i.e. using GitHub actions to Generate a new version of my resume and create a GitHub release with the new version as assets.
* Have a simple Makefile that setup the environment and run the pipeline - allowing me to easily generate things locally if I choose.
* Publish the resulting HTML and CSS to a GitHub page.

## css hints

CSS is hard. The mental model IMO is hard - especially for my grug brain.

So the css file was bastardised from the project above. The main thing that you'll probably want to know is you can set custom HTML tags line by line inside the markdown source of truth. that pandoc will respect. For example `{#under-heading}` putting this at the end of any line will apply the styles associated with the class name.
