SRCS := $(wildcard pages/*.tpl)
BINS := $(SRCS:pages/%.tpl=%.html)

.PHONY = all clean

all: ${BINS}

%.html: pages/%.tpl
	gpp $< -o $@

clean:
	rm ${BINS}

# @echo
# @echo This is right $<
# @echo This is left $@
# @echo
