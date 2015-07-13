FROM alpine:3.2
MAINTAINER admin@tropicloud.net

ADD . /adminer
RUN apk add curl \
	php-cli \
	php-common \
	php-mysql \
	php-mysqli \
	php-mssql \
	php-pdo_mysql \
	php-pdo_pgsql \
	php-pdo_sqlite \
	php-pgsql \
	php-sqlite3 \
	--update && \
	curl -sL http://www.adminer.org/latest-en.php > /adminer/index.php
		
EXPOSE 80
CMD /adminer/start.sh

