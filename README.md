# Thesis Template
[![Build](https://github.com/Alwinator/thesis-template/actions/workflows/build.yml/badge.svg)](https://github.com/Alwinator/thesis-template/actions/workflows/build.yml)

## Features
- Local Builds as PDF
- Automatically rebuild PDF on change
- Automated Remote Builds after a commit using GitHub Actions
- Compartible with an Austrian HTL Diplomarbeit (NO WARRANTIES)
- Based on Asciidoctor
- Dynamically render matplotlib and graphviz-py diagrams
- Docker Support
- Printed & PDF optimized version
- Citation support using bibtex
- Formulas using Latexmath
- Author name in the footer

## Disclaimer
I know that this template is not perfect, however it is a good start and can be adjusted to your needs.

### Known Restrictions
- Build and Tested for **Ubuntu 20.04**
- The build process also works on macOS, the watcher does not

## Getting Started
### Local Build
```
bash build.sh
```
#### Docker Settings
Make sure that you can execute Docker without sudo.
> https://askubuntu.com/a/477554/1226233

#### If you want to skip the docker container build use:
```
bash build.sh skip
```

### Remote Build
Just push and download the latest build from [here](https://github.com/Alwinator/thesis-template/actions/workflows/build.yml).

### Watcher (Ubuntu only)
#### Install
```
sudo apt-get install inotify-tools xdotool
```

#### Start (no packages or virtual env required)
```
python watcher.py
```

## How to write?
### AsciiDoc (Headings, Text, Images, ...)
See [AsciiDoc Syntax Reference](https://docs.asciidoctor.org/asciidoc/latest/syntax-quick-reference/)

### Diagrams
See [Graphviz Gallery](https://graphviz.org/gallery/) and [graphviz-py](https://github.com/Alwinator/graphviz-py)

### Quotes
1. Use BibTeX
2. You can also use [Zotero](https://www.zotero.org) and export BibTeX
3. Add your bibtex into [bibtex.bib](assets/bibtex/bibtex.bib)
4. Quote in your text: See [Asciidoctor-bibtex Macros](https://github.com/asciidoctor/asciidoctor-bibtex#macros)
