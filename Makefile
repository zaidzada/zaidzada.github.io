
install:
	pip install jinja-cli

all: index cv

index:
	jinja -d data.yaml index.html.jinja > index.html

cv:
	jinja -d data.yaml cv.html.jinja > cv.html
