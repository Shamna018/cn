# Shell script using command line to test whether given number is prime or not
if [ $# -ne 1 ]
then
 echo "Syntax Error"
 echo "< $0 no >"
 exit
fi 
num=$1
i=2
flag=0
if [ $num -eq 1 ]
then 
echo "The number $num is not a prime number"
exit
fi
while [ $i -le `expr $num / 2 ` ]
do
if test `expr $num % $i` -eq 0
then 
flag=1
break;
fi
i=`expr $i + 1`
done 
if [ $flag -eq 1 ]
then
echo "The number $num is not prime number"
else
echo "The number $num is prime number"
fi 


# OUTPUT
# ksb@ksb-OptiPlex-3060:~/shamna/Network/Script$ sh prime.sh 3
# The number is prime
# ksb@ksb-OptiPlex-3060:~/shamna/Network/Script$ sh prime.sh  4
# The number is not prime



