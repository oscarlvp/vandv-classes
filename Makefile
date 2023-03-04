.PHONY: all html pdf clean

output/html/index.html:
	asciidoctor --trace -r asciidoctor-diagram content/00-main.adoc --destination-dir output/html/ --out-file index.html

output/pdf/vandv.pdf:
	asciidoctor-pdf -r asciidoctor-diagram  content/00-main.adoc --destination-dir output/pdf/ --out-file vandv.pdf

html: output/html/index.html
	cp content/images/* output/html/images

pdf: output/pdf/vandv.pdf

all: html pdf

clean:
	rm -rf output/
