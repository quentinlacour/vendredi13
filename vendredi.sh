#!/bin/bash

echo "Année à tester:";
read year
i=0;
y=0

for ((x=1; x<=12;x+=1))
	do
		i=`cal $x $year |awk {'print $6'} | grep 14 | wc -l`
		if [[ $i = 1 ]]; then 
			cal $x $year;
		
		fi

		y=$(expr $y + $i)
		
		done
		
		echo "Il y a :"
		echo  $y
		echo "vendredi 13"


	
