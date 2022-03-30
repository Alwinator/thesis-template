# Thesis Template
[![Build](https://github.com/Alwinator/thesis-template/actions/workflows/build.yml/badge.svg)](https://github.com/Alwinator/thesis-template/actions/workflows/build.yml)
[![Stars](https://img.shields.io/github/stars/Alwinator/thesis-template)](https://github.com/Alwinator/thesis-template)

An [Asciidoctor](https://asciidoctor.org/) template for an Austrian HTL thesis with features such as Local Docker Builds, Remote Builds, [matplotlib](https://matplotlib.org/) and [graphviz-py](https://github.com/Alwinator/graphviz-py) diagram support, and many more.

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

## [Example PDFs](https://github.com/Alwinator/thesis-template/releases)

## Known Restrictions
- Build and Tested for **Ubuntu 20.04**
- The build process also works on macOS, the watcher does not
- A had a limited amount of time to build this template, I know that there could be a lot of things improved.
- Pull Requests are welcome!

## Getting Started
### Local Build
Build local using Docker

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
Build after each commit and saves the generated PDF files as GitHub artifacts.

Just push and download the latest build from [here](https://github.com/Alwinator/thesis-template/actions/workflows/build.yml).

### Watcher (Ubuntu only)
The watcher automatically monitors you files and automatically rebuild and refreshes the PDF when the build is done.

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
