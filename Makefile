.PHONY: examples

CC = xelatex


RESUME_SRCS = $(shell find $(RESUME_DIR) -name '*.tex')
CV_SRCS = $(shell find cv -name '*.tex')

DanielBlezek.pdf: DanielBlezek.tex $(CV_SRCS)
	xelatex $<
clean:
	rm -f *.pdf
