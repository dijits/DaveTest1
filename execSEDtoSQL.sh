#! /bin/bash

for stubsql in `find . -name '*.sqlstub' -print`
do
    echo $stubsql
    stubprefix="`echo $stubsql | awk '{print substr($0,3,(length($0)-10))}'`"
    echo $stubprefix
    for stubsed in $stubprefix*.sed
    do
        sqlfilename="`echo $stubsed | awk '{print substr($0,1,(length($0)-4))}'`"
        echo $sqlfilename
        sed -f $stubsed  $stubsql > $sqlfilename.sql
    done

done
