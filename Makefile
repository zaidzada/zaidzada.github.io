# install: brew install jinja2-cli

SRCS := $(wildcard *.html.jinja)
OBJS := $(SRCS:.jinja=)

all: $(OBJS) base.html

base.html:
	@rm -f base.html

%.html: %.html.jinja
	jinja2 $@.jinja -o $@ data.yaml

debug:
	@echo $(SRCS)
	@echo $(OBJS)

clean:
	rm *.html