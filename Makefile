all: index papers cv

install:
	brew install jinja2-cli

index:
	jinja2 index.html.jinja -o index.html data.yaml

papers:
	jinja2 papers.html.jinja -o papers.html data.yaml

cv:
	jinja2 cv.html.jinja -o cv.html data.yaml
