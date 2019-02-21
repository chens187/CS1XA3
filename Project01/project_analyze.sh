#!/bin/bash
cd ..
echo "Enter 1 for  TODO"
echo "Enter 2 for MERGE"
echo "Enter 3 for COLORIZING"
read ans
echo "Loading,it might take some time. You have typed: " "$ans"
	if [ "$ans" -eq "1" ] ; then

		touch ~/CS1XA3/Project01/todo.log
		grep -r "#TODO" --exclude={todo.log,project_analyze.sh,README.md} ~/CS1XA3 >> ~/CS1XA3/Project01/todo.log
	elif [ "$ans" -eq "2" ] ; then
		git log --oneline >> temp.txt
		grep -i "merge" temp.txt >>temp2.txt
		cut -d " "  -f1 temp2.txt >>~/CS1XA3/Project01/merge.log
		rm temp.txt
		rm temp2.txt
	elif [ "$ans" -eq "3" ] ; then
		red=$'\e[1;31m'
		grn=$'\e[1;32m'
		blu=$'\e[1;34m'
		mag=$'\e[1;35m'
		cyn=$'\e[1;36m'
		white=$'\e[0m'
		echo "enter text"
		read text
		echo "colors avaialbe - 1=red,2=green,3=blue,4=magenta,5=cyan"
		echo "enter color "
                read color
		if [ "$color" -eq "1" ] ; then
			echo $red $text $white 
		elif [ "$color" -eq "2" ] ; then
                        echo $grn $text $white
		elif [ "$color" -eq "3" ] ; then
                        echo $blu $text $white
		elif [ "$color" -eq "4" ] ; then
                        echo $mag $text $white
		elif  [ "$color" -eq "5" ] ; then
                        echo $cyn $text $white
		fi
        else
		echo"Failed!"
        fi
