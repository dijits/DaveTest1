#! /bin/bash

username=$1
password=$2
for sqlfile in `find . -name '*.sql' -print`
do
    sqlplus $username/$password@CSUAT <  $sqlfile
done
