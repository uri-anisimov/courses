# lyx 
## packages install
```
$ sudo add-apt-repository ppa:lyx-devel/release
$ sudo apt update
$ sudo apt install lyx
$ sudo apt install texlive
$ sudo apt install texlive-lang-other \
    texlive-extra-utils \
    texlive-fonts-extra \
    texlive-formats-extra \
    texlive-lang-cyrillic \
    texlive-luatex 
$ sudo apt install culmus
```
## hebrew
### install
```
$ hebrew.sh 
```
### document settings
- Document Class - `Hebrew Article`
- Language - `Hebrew`
- Encoding - `Hebrew (CP1255)`
- LaTex Preamble 
```latex
\def\HeblatexEncoding{HE8}
\def\HeblatexEncodingFile{he8enc}
```
## generate pdf
```
$ lyx -e pdf2 *.lyx
```
## english
### document settings
- LaTeX Preamble
```latex
\usepackage[english]{babel}
```
