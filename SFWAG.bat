#!/usr/bin/bash

@echo OFF
goto :winpart

clear
echo "This Script Can Run on Both of Windows and GNU"
echo "it's run on GNU/Linux now"
echo "select your test project(1 or 2 or 3)"
echo "1: show files"
echo "2: add two numbers"
echo "3: guess number"
read -a project
if [ $project == 1 ]
then
	ls -Rla ~
elif [ $project == 2 ]
then
	echo "input first number:"
	read -a a
	echo "input sencond number"
	read -a b
	n=`expr $a + $b`
	echo "the sum of them is $n "
elif [ $project == 3 ]
then
	r=`expr $RANDOM`
	n=`echo "$r / 327.67" | bc`
	echo "guess a number from 0 to 100"
	for i in {4..0}
	do
		echo -n "I guess this number is: "
		read -a a
		if [ $a -eq $n ]
		then
			echo "bingo!"
			exit 0
		elif [ $a -lt $n ]
		then
			echo "too small"
		elif [ $a -gt $n ]
		then
			echo "too big"
		fi
		echo "you had $i shot"
	done
	echo "fool! this number is $n !"
fi


exit 0

:winpart
echo This Script Can Run on Both of Windows and GNU
echo it's run on Windows now
echo select your test project
echo (you have to select 1, because 2 and 3 is not finish now)
echo 1: show files
echo 2: add two numbers
echo 3: guess number
set /p project=""
dir /s C:\


