.PHONY: all clean
MEDIA=$(wildcard media/*)

all: onboarding.pdf onboarding.html

clean:
	rm onboarding.pdf onboarding.html

%.pdf: %.md preamble.tex $(MEDIA)
	pandoc --pdf-engine=xelatex --include-in-header=preamble.tex $< --output $@

%.html: %.md preamble.tex $(MEDIA)
	pandoc --standalone --section-divs -c style.css $< --output $@
