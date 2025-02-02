#
# NOTE: THIS DOCKERFILE IS GENERATED VIA "build.sh"
#
# PLEASE DO NOT EDIT IT DIRECTLY.
#
FROM composer:latest

LABEL maintainer="Jonathan Guo<coderjono@gmail.com>"
LABEL build_date="2025-02-01 00:01:57 UTC"

COPY entrypoint.sh /entrypoint.sh

RUN composer config --global github-protocols https && \
    composer global require laravel/installer && \
    echo 'export PATH="$PATH:$COMPOSER_HOME/vendor/bin"' > ~/.bashrc && \
    chmod a+x /entrypoint.sh

WORKDIR /app

ENTRYPOINT [ "/entrypoint.sh" ]