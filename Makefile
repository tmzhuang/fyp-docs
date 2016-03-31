.PHONY: watch all report.pdf clean

AUXDIR = "build"

all: report.pdf

report.pdf: 
	latexmk -pv report.tex

watch: 
	latexmk -pvc -pdflatex="pdflatex --interaction=nonstopmode %O %S" report.tex

clean:
	latexmk -CA

