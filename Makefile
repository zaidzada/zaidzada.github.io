all: index cv

install:
	brew install jinja2-cli


index:
	jinja2 index.html.jinja -o index.html data.yaml

cv:
	jinja2 cv.html.jinja -o cv.html data.yaml
