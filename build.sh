echo "Please sit back up until the compilation & installation is completed..."
apk update
apk add make autoconf automake libtool m4 wget musl-utils gzip bzip2 bison g++ git cmake pkgconfig libressl-dev openssl libzip-dev curl-dev readline-dev yaml-dev libpng-dev gmp-dev oniguruma-dev bash --repository=http://dl-cdn.alpinelinux.org/alpine/edge/main
wget https://www.php.net/distributions/php-7.3.18.tar.gz
tar -zxvf php-7.3.18.tar.gz
mv php-7.3.18 php-src
cd php-src
./configure --prefix=/usr --with-config-file-path=/etc/php/7.3/cli --with-config-file-scan-dir=/etc/php/7.3/cli/conf.d --disable-all --with-openssl --with-gmp --with-zlib --with-curl --with-pic --enable-phar --enable-ctype --enable-sockets --enable-shared=no --enable-static=yes --enable-shmop --enable-maintainer-zts --enable-pcntl  --enable-mbstring --enable-calendar --with-tsrm-pthreads --enable-bcmath --enable-cli --enable-zip --enable-ftp --with-gd --enable-opcache=yes --enable-hash --enable-json
make
make install
mkdir /etc/php/
mkdir /etc/php/7.3/
mkdir /etc/php/7.3/cli
mkdir /etc/php/7.3/cli/conf.d
cp php.ini-production /etc/php/7.3/cli/php.ini
cd ..
git clone https://github.com/krakjoe/pthreads.git
mv pthreads pthreads-src
cd pthreads-src
phpize
./configure
make
make install
sed '/\[php\]/a extension=pthreads.so' /etc/php/7.3/cli/php.ini
cd ..
wget https://pecl.php.net/get/yaml-2.1.0.tgz
tar xvf tar xvf yaml-2.1.0.tgz
mv yaml-2.1.0 yaml-src
cd yaml-src
./configure
make
sudo make install
sed '/\[php\]/a extension=yaml.so' /etc/php/7.3/cli/php.ini
echo "Installation Completed!"
