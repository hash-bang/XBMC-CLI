SCRIPT := xbmc-cli
VERSION := $(shell perl -MExtUtils::MakeMaker -le 'print MM->parse_version(shift)' $(SCRIPT))

# Which directory path to use when creating the deb file
DEBFACTORY := Distro/Deb

install:
	dpkg -i $(SCRIPT)_$(VERSION).deb

all: README.md deb

README.md: $(SCRIPT)
	pod2text $(SCRIPT) | perl -e '$$_=join("",<>); s/(.*```).*(```.*)/"$$1\n" . join("", <STDIN>) . $$2/es; print;' README.md >README.md.tmp
	mv README.md.tmp README.md
	git add README.md
	git commit -m 'Auto update from POD'

version:
	@echo "Version $(VERSION)"

clean:
	-rm *.deb
	-rm -r $(DEBFACTORY)

deb:
	-rm *.deb
	mkdir $(DEBFACTORY)
	mkdir -p $(DEBFACTORY)/usr/bin $(DEBFACTORY)/usr/share/man/man1 $(DEBFACTORY)/usr/share/doc/$(SCRIPT)
	cp -a $(SCRIPT) $(DEBFACTORY)/usr/bin
	cp -a docs/* $(DEBFACTORY)/usr/share/doc/$(SCRIPT)
	cp -ar Distro/DEBIAN $(DEBFACTORY)
	perl -pi -e 's/\$$VERSION/$(VERSION)/' $(DEBFACTORY)/DEBIAN/control
	pod2man $(SCRIPT) $(DEBFACTORY)/usr/share/man/man1/$(SCRIPT).1
	gzip -f $(DEBFACTORY)/usr/share/man/man1/$(SCRIPT).1
	dpkg -b $(DEBFACTORY) $(SCRIPT)_$(VERSION).deb
	-rm -r $(DEBFACTORY)
