#!/bin/bash

clean
echo Программа поиска файлов по имени или размеру
echo Разработчик: Пурик Яна


while : 
do
echo Выберите действие: 1.Поиск по имени файла 2.Поиск по размеру
read d
echo Введите каталог, в котором следует осуществлять поиск
read c

case  $d in 

1 ) 
echo Введите имя файла
read n
find $c -type f -name *$n*.* 
break
;;

2 )
echo введите размер в килобайтах
read s
echo $s
find $c -size +"$s"k
break
;;

*)
echo Ошибка!!! хотите продолжить?'(y\n)'
read cont
if [ $cont != y ]
then exit
fi
esac 
done 
