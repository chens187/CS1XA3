#!/bin/bash
cd ..
echo “Enter TODO ”

read ans
echo "Loading,it might take some time. You have typed: " "$ans"
        if [ "$ans" = "TODO" ] ; then
            touch ~/CS1XA3/Project01/todo.log
            grep -r “#TODO” --exclude={todo.log,project_analyze.sh} ~/CS1XA3 >> ~/CS1XA3/Project01/todo.log
        else
            echo"Failed!"
        fi
