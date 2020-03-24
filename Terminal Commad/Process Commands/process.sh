#!/bin/bash
nano -T 3 Hello.java
javac Hello.java
ls -ls
java Hello
ps -elf | grep java |grep -v grep
jobs
fg %1
bg %1
jobs
kilall java