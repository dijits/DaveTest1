#! /bin/bash

username=$1
password=$2
for sqlfile in `find . -name '*.sql' -print`
do
    /opt/oracle/product/11.2.0.3/client_1/bin/sqlplus $username/$password@CSUAT <  $sqlfile
done
