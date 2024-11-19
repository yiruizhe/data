#!/bin/bash

read -p "enter your number1:" n1
read -p "enter your number1:" n2
read -p "enter your number1:" n3

if [ $n1 -gt $n2 ];then
	tmp=$n1
	n1=$n2
	n2=$tmp
fi

if [ $n1 -gt $n3 ];then
	tmp=$n1
	n1=$n3
	n3=$tmp
fi

if [ $n2 -gt $n3 ];then
	tmp=$n2
	n2=$n3
	n3=$tmp
fi



echo "sorted : $n1,$n2,$n3"

