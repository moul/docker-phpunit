# Copyright (c) 2015, Rentabiliweb Group
#
# Permission  to use,  copy, modify,  and/or  distribute this  software for  any
# purpose  with  or without  fee  is hereby  granted,  provided  that the  above
# copyright notice and this permission notice appear in all copies.
#
# THE SOFTWARE IS PROVIDED "AS IS"  AND THE AUTHOR DISCLAIMS ALL WARRANTIES WITH
# REGARD TO  THIS SOFTWARE INCLUDING  ALL IMPLIED WARRANTIES  OF MERCHANTABILITY
# AND FITNESS.  IN NO EVENT SHALL  THE AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT,
# INDIRECT, OR  CONSEQUENTIAL DAMAGES OR  ANY DAMAGES WHATSOEVER  RESULTING FROM
# LOSS OF USE, DATA OR PROFITS,  WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR
# OTHER  TORTIOUS ACTION,  ARISING  OUT OF  OR  IN CONNECTION  WITH  THE USE  OR
# PERFORMANCE OF THIS SOFTWARE.

# http://phpunit.de/

FROM rentabiliweb/wheezy:amd64
MAINTAINER Rentabiliweb Group

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get upgrade -y \
    && apt-get install -y \
       php5-cli \
       php5-curl \
       php5-gd \
       php5-geoip \
       php5-imagick \
       php5-intl \
       php5-mcrypt \
       php5-memcache \
       php5-memcached \
       php5-mysqlnd \
       php5-redis \
       php5-sqlite \
       php5-tidy \
       php5-xdebug

# get composer (http://getcomposer.org/)
RUN wget -q -O /usr/local/bin/composer.phar http://getcomposer.org/composer.phar && \
    chmod 755 /usr/local/bin/composer.phar && \
    ln -s /usr/local/bin/composer.phar /usr/local/bin/composer

# get phpunit (http://phpunit.de/)
RUN wget -q -O /usr/local/bin/phpunit.phar https://phar.phpunit.de/phpunit.phar && \
    chmod 755 /usr/local/bin/phpunit.phar && \
    ln -s /usr/local/bin/phpunit.phar /usr/local/bin/phpunit
# EOF
