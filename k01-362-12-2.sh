
#!/bin/bash

echo "Программа поиска файлов по имени или размеру"
echo "Разработчик: Пурик Яна"

while [ true ] 
do
echo "Начать выполнение?(y/n)"
read ex
 case $ex in
  n )  
     echo "Программа завершена" 
     exit 0
  ;;
  y ) 
   while [ $ex = y  ]; do
   echo "Выберите действие: 1.Поиск по имени файла 2.Поиск по размеру"
   read d 
   case $d in
    1 )
   echo -n "введите католог для поиска "
   read c
       while [ ! -d "$c" ]; do 
       echo -n "каталога не существует! Еще раз?(y/n) "
       read ex
        case $ex in 
        y ) 
          echo -n "Введите каталог ";
          read c
        ;;
        n )
        exit 0
        ;;
        esac
       done
       echo "Введите имя файла"
       read name
       test -f "$c*$name*.*"     
         find $c -type f -name *$name*.* -print  2>/dev/null
          ex=n       
        ;;

        2 )
         echo "введите размер в килобайтах"
         read s
         echo $s
         find $c -size +"$s"k 2>/dev/null
         break
        ;;

        * )
         echo "Ошибка!!! хотите продолжить?(y\n)"
         read ex
         if [  $ex = n ]; then 
           exit 0
           fi
        esac
     done
  esac

done
exit 0
