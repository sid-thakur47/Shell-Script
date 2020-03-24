#!/bin/bash 
ps -elf | grep java | grepv -v java
ps -elf | grep java | grepv -v java | awk '{print $2}'
kill -9 `ps -elf | grep java | grepv -v java | awk '{print $2}'`
mypid=`ps -elf | grep java | grepv -v java | awk '{print $2}'`
echo $mypid
kill -9  $mypid
echo hello Tom
echo Hello Tom | awk '{ print $0}'
echo Hello Tom | awk '{ print $2}' 
echo Hello Tom | awk '{ $2 "Adam"} { print $0}'
cat data.csv
cat data.csv | grep CAPTAIN | awk '{print $2 " "$4}'
cat data.csv | grep CAPTAIN | awk '{sum+=$4} END {print sum/NR}'