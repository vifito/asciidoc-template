BOOKNAME=book
SOURCE=$(BOOKNAME).adoc
TARGET=$(BOOKNAME).pdf
LANG=gl

release:
	asciidoctor --trace -r asciidoctor-pdf -b pdf -dbook -a lang=$(LANG) -a data-uri! -a pdf-style=resources/themes/tema.yml -a pdf-fontsdir=resources/fonts $(SOURCE)

view:
	evince $(TARGET)

clean:
	rm -rf $(TARGET)
