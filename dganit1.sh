
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
            
function prime(){
count1=0
echo the number is $num
if [[ $num -lt 2 ]]; 
then 
	echo "not prime" 
else
for ((i=2; i<=num/2; i++))
do
if [[ $count1 -eq 1 ]]; 
then 
	echo "not prime" 
	break
fi
if [ $((num%i)) -eq 0 ]
then
	let count1=$count1+1
fi
done
fi
if [[ $count1 -eq 0 ]] && [[ $num -gt 2 ]];
then
	echo "$num is a prime number"
fi
	

if [[ $((num%2)) -eq 0 ]];
then
	echo number is even
else
	echo number is odd
fi

if [[ $((num%5)) -eq 0 ]];
then
	echo you can devide that by 5
else
	echo you cant devide by 5
fi
}

flag=1
select function in Add Subtract Multiply Divide Power-of Modulos Exit 
do
    case $function in

            Add)
            echo "Add selected"
            Add  ;;
            
            Subtract)
            echo "Subtract selected" 
            Subtract ;;

            Multiply)
            echo "Multiply selected"
            Multiply ;;

            Divide)
            echo "Divide selected"
            Divide ;;

            Power-of)
            echo "Power-of selected" 
                   power_of ;;

            Modulos)
            echo "Modulos selected" 
            Modulos ;;

            Exit)
            flag=0
            break;;
            *)
            echo "Error , invalid number "

    esac
done
