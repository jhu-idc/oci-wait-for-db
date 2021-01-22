#!/bin/sh

MYSQL_HOST=${MYSQL_HOST:-mariadb}

until nslookup ${MYSQL_HOST}.$(cat /var/run/secrets/kubernetes.io/serviceaccount/namespace).svc.cluster.local; do echo waiting for ${MYSQL_HOST}; sleep 2; done

