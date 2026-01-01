# install: brew install jinja2-cli

SRCS := $(wildcard *.html.jinja)
OBJS := $(SRCS:.jinja=)

all: $(OBJS) base.jinja

%.html: %.html.jinja  style.css
	jinja2 $@.jinja -o $@ data.yaml

debug:
	@echo $(SRCS)
	@echo $(OBJS)

clean:
	rm *.html