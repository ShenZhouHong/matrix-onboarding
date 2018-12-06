.PHONY: all clean
MEDIA=$(wildcard media/*)

all: onboarding.pdf

clean:
	rm onboarding.pdf

%.pdf: %.md preamble.tex $(MEDIA)
	pandoc --pdf-engine=xelatex --include-in-header=preamble.tex $< --output $@
