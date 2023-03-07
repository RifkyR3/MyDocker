FROM php:5.4-apache

# RUN apt update && apt upgrade -y --force-yes && apt-get install debian-ports-archive-keyring -y --force-yes
# RUN apt-key list  | grep "expired: " | sed -ne 's|pub .*/\([^ ]*\) .*|\1|gp' | xargs -n1 apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 
# RUN apt-key update

RUN apt-get update && apt-get install --no-install-recommends -y --force-yes \
    firebird-dev \
    apt-utils \
    libtidy-dev \
    libsnmp-dev \
    libmcrypt-dev \
    libfreetype6-dev libjpeg62-turbo-dev libpng12-dev \
    libicu-dev \
    libbz2-dev \
    libpq-dev \
    curl \
    wget \
    ca-certificates

RUN pecl install xdebug-2.4.1 && docker-php-ext-enable xdebug

RUN docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ 

RUN docker-php-ext-install \
    mysql \
    mcrypt \
    gd \
    intl \
    bcmath \
    calendar \
    ctype \
    bz2 \
    zip \
    pgsql


# Install Composer
# RUN update-ca-certificates
# RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
# RUN php -r "if (hash_file('sha384', 'composer-setup.php') === '55ce33d7678c5a611085589f1f3ddf8b3c52d662cd01d4ba75c0ee0459970c2200a51f492d557530c71c15d8dba01eae') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
# RUN php composer-setup.php
# RUN php -r "unlink('composer-setup.php');"
# RUN mv composer.phar /usr/local/bin/composer

RUN a2enmod rewrite

# And clean up the image
RUN apt-get autoremove -y \
    && apt-get clean \
    && apt-get autoclean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*