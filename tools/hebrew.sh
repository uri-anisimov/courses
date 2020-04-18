#!/bin/sh

dTEXMFLOCAL="$(kpsewhich -var-value TEXMFLOCAL)"

mkdir -p "/tmp/HebrewFonts" && \
cd "/tmp/HebrewFonts" && \
wget https://sourceforge.net/projects/ivritex/files/culmus-latex/culmus-latex-0.7/culmus-latex-0.7-r1.tar.gz/download -O culmus-latex-0.7-r1.tar.gz && \
tar -xvzf culmus-latex-0.7-r1.tar.gz && \
cd culmus-latex-0.7-r1 && \
sudo mkdir -p "${dTEXMFLOCAL}" && \
sudo rsync -a "usr/share/texmf/fonts" "${dTEXMFLOCAL}/" && \
sudo mktexlsr && \
sudo updmap-sys --enable Map=culmus.map 
