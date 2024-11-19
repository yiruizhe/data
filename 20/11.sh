#!/bin/bash

arr=(shitou jiandao bu )

get_next()
{
	next=$[$RANDOM%3]
	return $next
}

while true
do
	get_next
	computer=${arr[$?]}
	read -p "your turn:(0 shitou ,1 jiandao,2 bu, Ctrl + Z exit):" input
	echo -e "you: $input\tcomputer: $computer"
	case $input in
	  shitou|0)
		if [ $input = $computer ];then
			echo "no winner."		
		elif [ $computer = "jiandao" ];then
			echo "you win!"
		else 
			echo "you lose."
		fi
	;;
	  jiandao|1)
		if [ $input = $computer ];then
			echo "no winner."		
		elif [ $computer = "bu" ];then
			echo "you win!"
		else 
			echo "you lose."
		fi
	;;
	  bu|2)
		if [ $input = $computer ];then
			echo "no winner."		
		elif [ $computer = "shitou" ];then
			echo "you win!"
		else 
			echo "you lose."
		fi
	;;
	  *)
		echo "index out of range."
	;;
	esac	
done
