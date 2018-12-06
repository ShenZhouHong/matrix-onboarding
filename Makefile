.PHONY: all clean

all: onboarding.pdf

clean:
	rm onboarding.pdf

%.pdf: %.md preamble.tex
	pandoc --pdf-engine=xelatex --include-in-header=preamble.tex $< --output $@
