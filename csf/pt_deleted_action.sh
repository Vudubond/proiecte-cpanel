#!/bin/bash
#Made by Orlando @github-Vudubond
#Property of ClausWeb SRL ()

exe=$1
pid=$2
user=$3
ppid=$4


echo "${exe}||${pid}||${user}||${ppid}" >> /usr/local/csf/bin/logfile.txt;

kill -9 $pid;

find /usr/local/csf/bin -maxdepth 1 -name "logfile.txt" -size +50M -exec rm -rf {} \;
