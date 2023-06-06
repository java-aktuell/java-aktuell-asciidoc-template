#!/bin/sh
asciidoctor -r asciidoctor-lists --backend html5 article.adoc
asciidoctor -r asciidoctor-lists --backend docbook article.adoc
asciidoctor-pdf -r asciidoctor-lists article.adoc
pandoc --from docbook --to docx --output article.docx article.xml
