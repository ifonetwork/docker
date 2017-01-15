FROM php:5.6-fpm
RUN apt-get update && apt-get install -y  libmemcached-dev zlib1g-dev  libssl-dev \
    && pecl install memcached-2.2.0 \
    && pecl install mongodb \
    && docker-php-ext-enable memcached \
	&& docker-php-ext-enable mongodb \
	&& docker-php-ext-install pdo pdo_mysql
# Install programs
RUN apt-get update && \
    apt-get install curl nano  mc htop nano vim graphviz git --no-install-recommends -y  && \
    curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer	