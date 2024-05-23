#!/bin/bash

for (( itr=1; i<= 9999999; itr++));
do
    echo "round $itr";
# Enter the fuzzing code here
    python -c "print('A'* $itr )" | /home/mamzi/Desktop/vulnApp.out ;
    if [ $? -ne 0 ]
    then
        echo "$itr character is needed to crash";
	break
    fi
# Remember to kill the app
    pkill vulnApp;


done

