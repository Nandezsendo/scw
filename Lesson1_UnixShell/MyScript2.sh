#This is Software Carpentry  Workshop
#!/bin/bash 
#path to bash shell taht will execute this file
#this script outputs the highest life expectancy
#usage statement:
#usage: ./MyScript.sh
#change hard-wired file name
#Change Mexico.txt to input and  assinf the value Mexico

#define an input

input=Data/ByCountry/Mexico.txt
output=HighestLE2.txt


cut -f1,3,4 $input|sort -nk3|tail -n1 > $output
