#2-3/bin/bash
#set -x
read -p "input weight(kg):" wgt
read -p "input height(meter):" mtr
 y=`expr "scale=2; $mtr * $mtr" | bc`
BMI=`expr "scale=2; $wgt / $y" | bc`
if [ 1 -eq "$((echo "$BMI < 18.5") | bc)" ]
    then
       echo "underweight"
  elif [ 1 -eq "$((echo "$BMI > 18.5") | bc)" ] && [ 1 -eq "$((echo "$BMI < 24.5") | bc)" ]
    then
       echo "normal"
     elif [ 1 -eq "$((echo "$BMI > 25") | bc)" ] && [ 1 -eq "$((echo "$BMI < 29.9") | bc)" ]
    then
         echo "overweight"
    else
         echo "obese"
    fi
~

