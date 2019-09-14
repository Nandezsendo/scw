#This is Software Carpentry  Workshop
#!/bin/bash 
#path to bash shell taht will execute this file
#this script outputs the highest life expectancy
#usage statement:
#usage: ./MyScript3.sh input > output
#change hard-wired file name
#Change Mexico.txt to input and  assinf the value Mexico

#define an input
#$1 special vailable accepts value from the command line
input=$1 




cut -f1,3,4 $input|sort -nk3|tail -n1 
