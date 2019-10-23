OUTPUT_FOLDER = docs/
INPUT_FOLDER = src/

POSTER_DATA_PATHS = $(wildcard $(INPUT_FOLDER)*.md)
POSTER_DATA = $(notdir $(POSTER_DATA_PATHS))
POSTER_OUTPUT_NAMES = $(POSTER_DATA:.md=.html)
POSTER_OUTPUT = $(addprefix $(OUTPUT_FOLDER),$(POSTER_OUTPUT_NAMES))


$(OUTPUT_FOLDER)%.html: $(INPUT_FOLDER)%.md
	pandoc $^ --standalone --template=template/poster-template.html -o $@


$(OUTPUT_FOLDER)index.md: $(POSTER_OUTPUT)
	rm $@ || true
	touch $@
	echo '---' >> $@
	echo 'title: Paramdigma Workshop Posters' >> $@
	echo '---\n' >> $@
	for i in $(POSTER_OUTPUT_NAMES); do \
		echo '-['$$i']('$$i')' >> docs/index.md ; \
	done

LIST = one two three

.PHONY: index-md

posters: $(POSTER_OUTPUT)
	make index-md

index-md: $(OUTPUT_FOLDER)index.md 

index: $(OUTPUT_FOLDER)index.html

print-%  : ; @echo $* = $($*)
