all: index cv

install:
	pip install jinja-cli


index:
	jinja -d data.yaml index.html.jinja > index.html

cv:
	jinja -d data.yaml cv.html.jinja > cv.html
