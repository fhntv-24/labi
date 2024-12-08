#!/bin/bash
if [ "$#" != 1 ]
then
	echo "файл для записи не передан или переданно слишком много аргументов(нужен 1)"
	exit 0
fi
f="$1"
add_task(){
	read -p "название задачи: " task
	if [ -z "$task" ]
		then
		echo "название это когда пишут буковки"
		return 
	fi
	echo "$task" >> "$f"
	echo "так и запишем"
}
vivod_task(){
	if [ ! -s "$f" ]
	then
		echo "а что ты на меня смотришь, у меня нет ничего"
	exit 1
	fi
	echo "внимание внимаение ЗАДАЧИ:"
	cat "$f"
}
while true
do
echo "Выберите действие:"
echo "1. Добавить задачу" 
echo "2. Просмотреть задачи" 
echo "3. Выход" 
read -p "Ваш выбор: " c
case $c in
1)
add_task
;;
2)
vivod_task
;;
3)
echo "ну не оченьто и хотелось"
exit 0
;;
*)
echo "тз гласило о 3 функциях если хотите сами добавляйте"
;;
esac
done
