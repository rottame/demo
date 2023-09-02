#!/bin/sh

set -x

zypper -n ar https://download.opensuse.org/repositories/security:/tls/15.5 security || exit 1
zypper -n --gpg-auto-import-keys si openssl-1_0_0 || exit 1

cd /usr/src/packages/SPECS || exit 1
rpmbuild -bp openssl-1_0_0.spec || exit 1
VERSION=$(grep "Version:" openssl-1_0_0.spec | sed  "s/.*\(1\.0\..*\)$/\1/") || exit 1

cd /usr/src/packages/BUILD/openssl-${VERSION}/ || exit 1

find . -name '*.orig' -delete || exit 1
./config --prefix=/opt/ruby --openssldir=/etc/ssl/ \
  threads shared no-rc5 no-idea \
  fips \
  no-ssl2 \
  no-ssl3 \
  enable-rfc3779 \
  enable-ec_nistp_64_gcc_128 \
  enable-camellia \
  zlib \
  no-ec2m \
  ${CFLAGS} \
  -std=gnu99 \
  -Wa,--noexecstack \
  -Wl,-z,relro,-z,now \
  -fno-common \
  -DTERMIO \
  -DPURIFY \
  -D_GNU_SOURCE \
  -DOPENSSL_NO_BUF_FREELISTS \
  -Wall || exit 1
make depend || exit 1
make || exit 1
make install || exit
