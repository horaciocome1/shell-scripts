#/bin/bash

#if ["$(id -u)" != "0"]; then
#   echo "tem que ser root";
#   exit;
#else
#   echo "eh root";
#   exit;
#fi
clear
echo
sleep 2
if [[ "$(id -u)" != "0" ]]; then
	for (( i = 0; i < 5; i++ )); do
		echo " ********** tem que ser root ********* "
		sleep 1
		echo
	done
	echo " ********** tem que ser root ********* "
else
	echo " ************** eh root ************** "
fi
echo
sleep 5
clear
sleep 1	
exit