FROM adminer:latest
MAINTAINER Ondrej Sika <ondrej@ondrejsika.com>
USER root
RUN echo "upload_max_filesize = 500M" >> /usr/local/etc/php/conf.d/upload_large_dumps.ini \
    && echo "post_max_size = 500M"       >> /usr/local/etc/php/conf.d/upload_large_dumps.ini \
    && echo "memory_limit = -1"           >> /usr/local/etc/php/conf.d/upload_large_dumps.ini \
    && echo "max_execution_time = 0"      >> /usr/local/etc/php/conf.d/upload_large_dumps.ini
VOLUME /sessions
EXPOSE 80
CMD ["php", "-S", "[::]:80", "-t", "/var/www/html"]

