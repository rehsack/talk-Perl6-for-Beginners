PROJECT=Perl6-for-Beginners

all: $(PROJECT).pdf

$(PROJECT).dvi: $(PROJECT).tex $(PROJECT)-Install.tex $(PROJECT)-Run.tex $(PROJECT)-Oneliners.tex $(PROJECT)-Numbers.tex $(PROJECT)-Strings.tex $(PROJECT)-Conditionals.tex $(PROJECT)-Loops.tex \
		rainbow-flag-apple.eps Life-with-Alfa-Romeo.eps Life-without-Alfa-Romeo.eps
	latex $(PROJECT).tex
	latex $(PROJECT).tex
	latex $(PROJECT).tex

$(PROJECT).pdf: $(PROJECT).dvi Makefile
	dvipdf $(PROJECT).dvi
