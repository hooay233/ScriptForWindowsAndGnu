#!/usr/bin/bash

@echo OFF
goto :winpart

echo "此脚本既可在Windows运行，也能在GNU/Linux上运行"
echo "当前在GNU/Linux上运行"
echo "输入你要运行的测试项目（1或2或3）："
echo "1: 装逼"
echo "2: 两数相加"
echo "3: 猜数字"
read -a project
if [ $project == 1 ]
then
	ls -Rla ~
elif [ $project == 2 ]
then
	echo "输入第一个数："
	read -a a
	echo "输入第二个数："
	read -a b
	n=`expr $a + $b`
	echo "他俩的和是 $n "
elif [ $project == 3 ]
then
	r=`expr $RANDOM`
	n=`echo "$r / 327.67" | bc`
	echo "猜一个 0 到 100 的数"
	for i in {4..0}
	do
		echo -n "我猜这个数是："
		read -a a
		if [ $a -eq $n ]
		then
			echo "你猜对了！"
			exit 0
		elif [ $a -lt $n ]
		then
			echo "你猜小了！"
		elif [ $a -gt $n ]
		then
			echo "你猜大了！"
		fi
		echo "你还有 $i 次机会"
	done
	echo "这个数是 $n ！这都猜不中你个傻逼！"
fi


exit 0

:winpart

echo 此脚本既可在Windows运行，也能在GNU/Linux上运行
echo 当前在Windows上运行
echo 输入你要运行的测试项目（实际上只能选1，其他的还没做）：
echo （如果想看其他测试项目，请用linux运行此脚本）
echo 1: 装逼
echo 2: 两数相加
echo 3: 猜数字
set /p project=""
dir /s C:\


