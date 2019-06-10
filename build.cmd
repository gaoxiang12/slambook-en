@echo off
@SET SED=D:\utility\unxutils\sed.exe
@SET TEXINPUTS=.;images;latex;
@SET TEX=xelatex
@SET OPTIONS=-synctex=1 -file-line-error -output-directory=./release -jobname=31104

%TEX% %OPTIONS% slambook.tex 
