.PHONY : FORCE_MAKE
all : main.pdf

%.pdf : %.tex FORCE_MAKE
	latexmk --lualatex -pvc -halt-on-error -silent $<
