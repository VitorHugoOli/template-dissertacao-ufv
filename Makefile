# make           versão completa  -> main.pdf
# make deposito  versão de depósito (corpo para o AcademicoPG) -> deposito.pdf
# make clean     apaga os arquivos auxiliares

LATEX = pdflatex -interaction=nonstopmode -halt-on-error

all: main.pdf
deposito: deposito.pdf

%.pdf: %.tex preambulo.tex resumo.tex abntex2-UFV.sty referencias.bib capitulos/*.tex
	$(LATEX) $*
	bibtex $*
	$(LATEX) $*
	$(LATEX) $*

clean:
	rm -f *.aux *.bbl *.blg *.brf *.idx *.ilg *.ind *.lof *.log *.lot *.out *.toc capitulos/*.aux

.PHONY: all deposito clean
