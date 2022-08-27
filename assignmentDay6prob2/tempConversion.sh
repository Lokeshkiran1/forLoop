#!/bin/bash -x

#Help user find degF or degC based on their Conversion Selection. Use Case Statement and ensure that the inputs are within the 
#Freezing Point (0 °C / 32 °F ) and the Boiling Point of Water ( 100 °C / 212 °F )
#a. degF = (degC * 9/5) + 32
#b. degC = (degF – 32) * 5/9

read -p "Enter temperature " temp
echo "a) convert celcius to farenheit"
echo "b) convert farenheit to celcius"
read degr


function cel_to_far() {
	echo $((temp*9/5+32))
}

function far_to_cel() {
	echo $(((temp-32)*5/9))
}


case $degr in
        a)
            if [[ $temp -ge 0 ]] && [[ $temp -le 100 ]]
            then
                 result=$( cel_to_far $temp )
				 echo "$temp C = $result F"
            fi
            ;;
			b)
            if [[ $temp -ge 32 ]] && [[ $temp -le 212 ]]
            then
                 result=$( far_to_cel $temp )
				 echo "$temp F = $result C"
            fi
            ;;
esac
