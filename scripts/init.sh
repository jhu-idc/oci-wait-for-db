#!/bin/sh

MYSQL_HOST=${MYSQL_HOST:-mariadb}

until nslookup ${MYSQL_HOST}; do echo waiting for ${MYSQL_HOST}; sleep 2; done

