install:
	bundle install

html:
	bundle exec asciidoctor --trace -r asciidoctor-diagram content/00-main.adoc --destination-dir output/ --out-file index.html
	cp content/images/* output/images

pdf:
	bundle exec asciidoctor-pdf -r asciidoctor-diagram  content/00-main.adoc --destination-dir output/ --out-file vandv.pdf

all: html pdf

clean:
	rm -rf output/
