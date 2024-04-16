.PHONY: clean slides_md help

slides.html: src/slides.m4.md $(wildcard src/slides/*.m4.md)
slides.md:   src/slides.m4.md $(wildcard src/slides/*.m4.md)

M4_FLAGS=-I src/slides -I src
PANDOC_FLAGS=-f markdown-markdown_in_html_blocks+raw_html -t slidy -s --css=src/style.css

help:
	@echo 'Valid targets:'
	@echo 'clean: Remove all buildable files'
	@echo 'help: Show this help info'
	@echo 'slides_md: Make all slides and put them in ./slides'
	@echo 'slides.md: Make one large markdown file containing all the slides'
	@echo 'slides.html: Make one html file with all the slides'
	@echo 'List of slides:'
	@$(foreach slide, $(patsubst src/slides/%.m4.md, slides/%.md, $(wildcard src/slides/*.m4.md)), echo '    $(slide)';)

slides:
	mkdir -p slides

slides_md: $(patsubst src/slides/%.m4.md, slides/%.md, $(wildcard src/slides/*.m4.md))

clean:
	rm -rf -- *.html slides.md slides

slides/%.md: src/slides/%.m4.md slides
	m4 -DTARGET="MD" $(M4_FLAGS) $< > $@

%.html: src/%.md src/style.css
	pandoc $(PANDOC_FLAGS) $< > $@

%.md: src/%.m4.md
	m4 -DTARGET="MD" $(M4_FLAGS) $< > $@

%.html: src/%.m4.md src/style.css
	m4 -DTARGET="HTML" $(M4_FLAGS) $< | pandoc $(PANDOC_FLAGS) > $@