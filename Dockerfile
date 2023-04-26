FROM mediawiki:latest as main

WORKDIR /var/www/html

RUN apt-get update \
    && apt-get install -y wget \
    && git clone https://github.com/edwardspec/mediawiki-moderation.git /var/www/html/extensions/Moderation

COPY ./LocalSettings.php /var/www/html/LocalSettings.php