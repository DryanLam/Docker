#!/bin/bash

echo "Install Chrome browser & Chromedriver"
# Download specific chrome package
wget -q -O chrome.deb http://dl.google.com/linux/chrome/deb/pool/main/g/google-chrome-stable/google-chrome-stable_${CHROME_VERSION}-1_amd64.deb

# Install Chrome package
apt-get update \
&& apt-get -y install ./chrome.deb \
&& rm chrome.deb

# Run Chrome as root
sed -i 's/exec -a "$0" "\$HERE\/chrome" "\$@"/exec -a "\$0" "$HERE\/chrome" "\$@" --no-sandbox --disable-dev-shm-usage/' /opt/google/chrome/google-chrome