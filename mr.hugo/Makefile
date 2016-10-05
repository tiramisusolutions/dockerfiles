# Makefile

HUGO = docker run -u "$(shell id -u):$(shell id -g)" -it --rm -v `pwd`:/src -p 1313:1313 mh1

.PHONY: server
server:
	$(HUGO) server -w --baseUrl="http://localhost:1313" --bind=0.0.0.0

.PHONY: clean
clean:
	$(RM) -r public

.PHONY: build
build: clean
	$(HUGO)

.PHONY: new
new:
	$(HUGO) new

.PHONY: create
create:
	$(HUGO) new site .
