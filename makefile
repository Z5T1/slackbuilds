VERSION=1.0.0

package:
	sed -i 's/SB_VERSION=.*/SB_VERSION=$(VERSION)/g' bin/usr/bin/slackbuilds
	sed -i 's/ Version:.*/ Version:	$(VERSION)/g' bin/usr/bin/slackbuilds
	cd bin; makepkg -c y ../slackbuilds-$(VERSION)-noarch.tgz

clean:
	rm -f slackbuilds-$(VERSION)-noarch.tgz
