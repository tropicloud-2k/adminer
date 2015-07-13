#!/bin/sh

if [[  ! -z $MYSQL_ENV_MYSQL_ROOT_PASSWORD  ]]; then

	echo -e "\033[0;30m
-----------------------------------------------------
\033[0;34m  Adminer\033[0;37m - Database management\033[0;30m
-----------------------------------------------------
\033[0m
\033[0m  MYSQL HOST:\033[0;37m $MYSQL_PORT_3306_TCP_ADDR
\033[0m  USER:\033[0;37m root
\033[0m  PASS:\033[0;37m $MYSQL_ENV_MYSQL_ROOT_PASSWORD
\033[0m"

fi

exec php -S 0.0.0.0:80 -t /adminer
