# install: brew install jinja2-cli

SRCS := $(wildcard *.html.jinja)
OBJS := $(SRCS:.jinja=)

all: $(OBJS)

%.html: %.html.jinja base.jinja style.css
	jinja2 --strict -D today=$$(date +'%Y-%m-%d') -o $@ $@.jinja data.yaml

vars:
	@echo $(SRCS)
	@echo $(OBJS)

clean:
	rm *.html