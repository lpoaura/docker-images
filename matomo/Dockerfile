FROM matomo:fpm-alpine

# Run archive script every 5 minutes
RUN echo "*/5 * * * * /usr/local/bin/php /var/www/html/console core:archive --url=https://analytics.example.com/" >> /etc/crontabs/root

# Run scheduled tasks every 20 minutes
RUN echo "*/20 * * * * /usr/local/bin/php /var/www/html/console scheduled-tasks:run" >> /etc/crontabs/root

# Start Cron and PHP
CMD crond && php-fpm
