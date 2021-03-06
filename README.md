# Thesis Template
[![Build](https://github.com/Alwinator/thesis-template/actions/workflows/build.yml/badge.svg)](https://github.com/Alwinator/thesis-template/actions/workflows/build.yml)
[![Stars](https://img.shields.io/github/stars/Alwinator/thesis-template)](https://github.com/Alwinator/thesis-template)

An [Asciidoctor](https://asciidoctor.org/) template for an Austrian HTL thesis with features such as Local Docker Builds, Remote Builds, [matplotlib](https://matplotlib.org/) and [graphviz-py](https://github.com/Alwinator/graphviz-py) diagram support, plus many more.

## Features
- Local Builds as PDF
- Automatically rebuilds PDF after changes
- Automated Remote Builds after a commit using GitHub Actions
- Compatible with an Austrian HTL Diplomarbeit (NO GUARANTEES)
- Based on Asciidoctor
- Dynamically renders matplotlib and graphviz-py diagrams
- Docker Support
- Printed & PDF optimized version
- Citation support using bibtex
- Formulas using LatexMath

For faster builds, there is also a [lite version](https://github.com/Alwinator/thesis-template/tree/lite) available which has no [matplotlib](https://matplotlib.org/) or [graphviz-py](https://github.com/Alwinator/graphviz-py) diagram support.

## Planned Features
- Add more options (to disable certain features)
- Add more documentation

## [Example PDFs](https://github.com/Alwinator/thesis-template/releases)

## Known Restrictions
- Tested on **Ubuntu 20.04** and **Windows 10**
- The watcher only works on Ubuntu
- I had a limited amount of time to build this template, I know that there are a lot of things that could be improved.
- Pull Requests are welcome!

## Getting Started
Before pulling, make sure you have [git lfs](https://git-lfs.github.com/) installed.

### Local Build
Build local using Docker

#### Windows
1. Make sure Docker Desktop is running
2. Run `build.bat` by double-clicking it or by using the terminal:
```
.\build.bat
```
3. The built PDFs can be found in the [build](./build) folder.

#### Linux & MacOS
1. Run `build.sh` using the terminal:
```
bash build.sh
```
2. The built PDFs can be found in the [build](./build) folder.

#### If you want to skip the Docker container build, you can use:
```
bash build.sh skip
```

#### Common errors
Make sure that you can execute Docker without sudo.
> https://askubuntu.com/a/477554/1226233

### Remote Build
Builds after each commit and saves the generated PDF files as GitHub artifacts.

Just push and download the latest build from [here](https://github.com/Alwinator/thesis-template/actions/workflows/build.yml).

### Watcher (Ubuntu only)
The watcher automatically monitors your files and automatically rebuilds and refreshes the PDF when the build is complete.

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
3. Add your bibtex to [bibtex.bib](assets/bibtex/bibtex.bib)
4. Quote in your text: See [Asciidoctor-bibtex Macros](https://github.com/asciidoctor/asciidoctor-bibtex#macros)
