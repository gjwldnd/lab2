#2-2/bin/sh

read num1 ad num2
case $ad in
        '+') output=`expr $num1 + $num2`;;
        '-') output=`expr $num1 - $num2`;;
esac



echo ">> output:$output"
