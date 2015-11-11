#!/bin/sh

if [[  ! -z $MYSQL_ENV_MYSQL_ROOT_PASSWORD  ]]; then
	echo -e "Database Management"
	echo -e "Host: $MYSQL_PORT_3306_TCP_ADDR"
	echo -e "Pass: $MYSQL_ENV_MYSQL_ROOT_PASSWORD"
fi

exec php -S 0.0.0.0:80 -t /app
