SRCS := $(wildcard pages/*.tpl)
PART := pages/partials/navbar.html pages/partials/footer.html
BINS := $(SRCS:pages/%.tpl=%.html)

.PHONY = all clean

all: ${BINS}

%.html: pages/%.tpl
	gpp $< -o $@

${SRC}: ${PART}

${PART}:

clean:
	rm ${BINS}

# @echo
# @echo This is right $<
# @echo This is left $@
# @echo
