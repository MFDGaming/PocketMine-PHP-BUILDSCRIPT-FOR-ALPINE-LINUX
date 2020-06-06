apk update
apk add make autoconf automake libtool m4 wget musl-utils gzip bzip2 bison g++ git cmake pkgconfig libressl-dev openssl libzip-dev curl-dev readline-dev yaml-dev libpng-dev gmp-dev bash --repository=http://dl-cdn.alpinelinux.org/alpine/edge/main
wget https://www.php.net/distributions/php-7.4.6.tar.gz
mv php-7.4.6 php-src
cd php-src
./configure --prefix=/usr --with-config-file-path=/etc/php/7.2/cli --with-config-file-scan-dir=/etc/php/7.2/cli/conf.d --disable-all --with-openssl --with-gmp --with-zlib --with-curl --with-pic --enable-phar --enable-ctype --enable-sockets --enable-shared=no --enable-static=yes --enable-shmop --enable-maintainer-zts --enable-pcntl  --enable-mbstring --enable-calendar --with-tsrm-pthreads --enable-bcmath --enable-cli --enable-zip --enable-ftp --with-gd --enable-opcache=yes --enable-hash --enable-json
