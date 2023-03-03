FROM php:8.2-apache-bullseye

RUN apt-get update && apt-get install -y --force-yes \
    firebird-dev \
    apt-utils \
    libtidy-dev \
    libsnmp-dev \
    curl \
    wget \
    ca-certificates

RUN update-ca-certificates

ADD https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/

RUN chmod +x /usr/local/bin/install-php-extensions && \
    install-php-extensions \
    gd \
    xdebug \
    mysqli \
    # mcrypt \
    intl \
    bcmath \
    calendar \
    zip \
    sockets \
    bz2 \
    pgsql

# RUN install-php-extensions @composer

RUN a2enmod rewrite

RUN apt-get autoremove -y && apt-get clean && apt-get autoclean

RUN service apache2 restart

# And clean up the image
RUN rm -rf /var/lib/apt/lists/*