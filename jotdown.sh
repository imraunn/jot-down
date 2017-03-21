#!/bin/bash
clear
echo "__________                       "
echo "\______   \_____   __ __  ____   "
echo " |       _/\__  \ |  |  \/    \  "
echo " |    |   \ / __ \|  |  /   |  \ "
echo " |____|_  /(____  /____/|___|  / "
echo "        \/      \/           \/ "

user=`whoami`
time=`date`

if [ $user = 'raun' ]; then
  echo "You are authorized!"
else
   echo "You are unauthorized!"
   exit
fi
read -p "Enter the text you want to save: `echo $'\n> '`" note
echo "$note // $time" >> notes.txt
