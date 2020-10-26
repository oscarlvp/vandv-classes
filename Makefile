% :
	asciidoctor --trace -r asciidoctor-diagram content/$@/00-main.adoc --destination-dir output/   --out-file $@.html
	cp content/$@/images/* output/images

clean:
	rm -rf output

# bundle exec asciidoctor-pdf -r asciidoctor-diagram  content/cms/00-main.adoc --destination-dir output/
