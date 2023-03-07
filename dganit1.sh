
#! /bin/bash
read -p "Enter two numbers: " num1 num2 num3


function Add(){
        echo "$num1 + $num2 = $(( $num1 + $num2 ))"
        num=$((num1+num2))
        prime $num
}
             

function Subtract(){
   echo "$num1 - $num2 = $(( $num1 - $num2 ))"
   num=$((num1-num2))
        prime $num
                      }
           


function Multiply(){
echo "$num1 * $num2 = $(( $num1 * $num2 ))"
num=$((num1*num2))
        prime $num
            }


function Divide(){
    if [[ $num2 -eq 0 ]]
    then 
         echo " you can't divide by zero"
    else

     echo  "$num1 / $num2" 
     echo  "scale=2; $num1/$num2" | bc
    fi
    num="scale=2; $num1/$num2" | bc
            prime $num
            }

function power_of(){
echo "$num1 ** $num2 = $(( $num1 ** $num2 ))"
num=$((num1**num2))
        prime $num
            }


function Modulos(){
echo "$num1 % $num2 = $(( $num1 % $num2 ))"
num=$((num1%num2))
        prime $num

            }
