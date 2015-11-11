FROM alpine:3.2
MAINTAINER admin@tropicloud.net

ADD . /app
RUN apk add curl unzip \
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
	curl -sL http://www.adminer.org/latest-en.php > /app/index.php
	curl -sL https://github.com/interconnectit/Search-Replace-DB/archive/master.zip > /app/master.zip && \
	unzip /app/master.zip && rm -f /app/master.zip

EXPOSE 80
CMD /app/start.sh
