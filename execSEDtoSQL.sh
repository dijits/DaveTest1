#! /bin/bash

for stubsql in `find . -name '*.sqlstub' -print`
do
    echo $stubsql
    stubprefix="`echo $stubsql | awk '{print substr($0,3,(length($0)-10))}'`"
    echo $stubprefix
    for stubsed in $stubprefix*.sed
    do
        echo $stubsed
        sed -f $stubsed  $stubsql > $stubprefix.sql
    done

done
