#!/usr/bin/bash

@echo OFF
goto :winpart

echo "�˽ű��ȿ���Windows���У�Ҳ����GNU/Linux������"
echo "��ǰ��GNU/Linux������"
echo "������Ҫ���еĲ�����Ŀ��1��2��3����"
echo "1: װ��"
echo "2: �������"
echo "3: ������"
read -a project
if [ $project == 1 ]
then
	ls -Rla ~
elif [ $project == 2 ]
then
	echo "�����һ������"
	read -a a
	echo "����ڶ�������"
	read -a b
	n=`expr $a + $b`
	echo "�����ĺ��� $n "
elif [ $project == 3 ]
then
	r=`expr $RANDOM`
	n=`echo "$r / 327.67" | bc`
	echo "��һ�� 0 �� 100 ����"
	for i in {4..0}
	do
		echo -n "�Ҳ�������ǣ�"
		read -a a
		if [ $a -eq $n ]
		then
			echo "��¶��ˣ�"
			exit 0
		elif [ $a -lt $n ]
		then
			echo "���С�ˣ�"
		elif [ $a -gt $n ]
		then
			echo "��´��ˣ�"
		fi
		echo "�㻹�� $i �λ���"
	done
	echo "������� $n ���ⶼ�²������ɵ�ƣ�"
fi


exit 0

:winpart

echo �˽ű��ȿ���Windows���У�Ҳ����GNU/Linux������
echo ��ǰ��Windows������
echo ������Ҫ���еĲ�����Ŀ��ʵ����ֻ��ѡ1�������Ļ�û������
echo ������뿴����������Ŀ������linux���д˽ű���
echo 1: װ��
echo 2: �������
echo 3: ������
set /p project=""
dir /s C:\


