FROM wordpress:latest

LABEL version="0.1"
LABEL maintaner="lpofredc"

RUN apt update && apt -y upgrade && \
    apt -y install less

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
    chmod +x wp-cli.phar && \
    mv wp-cli.phar /usr/local/bin/wp
    
RUN curl -O https://raw.githubusercontent.com/wp-cli/wp-cli/v2.6.0/utils/wp-completion.bash && \
    cat wp-completion.bash >> ~/.bashrc

USER www-data
