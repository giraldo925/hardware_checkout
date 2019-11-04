#!/bin/sh
read -p "Would you like to stress test the system? (Y/N)" HWSTRESS
if [[ $HWSTRESS = "Y" ]]
then 
	 hardware_checkout.sh
elif [[ $HWSTRESS = "N" ]]
	then
	read -p "would you like to wipe the drives? (Y/N)" WIPE
fi
if [[ $WIPE = "Y" ]]
		then 
			wipe.sh
		elif [[ $WIPE = "N" ]] 
		then
			initialboot.sh
		fi