#!/bin/bash -x
function myfunc(){
	#for((a=1; a<=2; a++))
	#do
		echo $1
	#done
}
result="$( myfunc $((RANDOM%2)) )";
if [ $result -eq 1 ]
then
	echo "1 volt";
else
	echo "0 volt";
fi

