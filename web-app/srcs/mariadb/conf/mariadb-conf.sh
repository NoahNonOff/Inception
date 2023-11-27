#!/bin/bash

service mysql start;

mysql_secure_installation << _EOF_



password
password
n
n
n
n
_EOF_

exec mysqld_safe