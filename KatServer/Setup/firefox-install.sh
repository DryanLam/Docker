#!/bin/bash
echo "Install Firefox browser"

# Download specific Firefox package
wget -q -O firefox.tar.bz2 https://ftp.mozilla.org/pub/firefox/releases/${FIREFOX_VERSION}/linux-x86_64/en-GB/firefox-${FIREFOX_VERSION}.tar.bz2 \
&& tar xjf firefox.tar.bz2 -C /opt/ \
&& ln -s /opt/firefox/firefox /usr/bin/firefox \
&& rm /home/firefox.tar.bz2

# Fix issue of FF
apt-get install libdbus-glib-1-2