.PHONY: build install

build:
	docker build -t kmfbuilder .
	docker run -v $(CURDIR)/bin:/app/bin kmfbuilder

install:
	cp  $(CURDIR)/bin/kmf $(BINDIR)