#!/usr/bin/env sh

# Download & install Burp Suite certificate
wget -q http://burp:8080/cert -O cert.der
openssl x509 -in cert.der -inform DER -out cert.pem
mkdir /usr/local/share/ca-certificates/extra
cp cert.pem /usr/local/share/ca-certificates/extra/cert.crt
update-ca-certificates
rm cert.der cert.pem