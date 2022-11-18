#!/bin/bash
currency=`java CurrencyConverter 50 dollars`;
echo "$currency";

if [ "$currency" == "dollars" ] || [ "$currency" == "Dollars" ] || [ "$currency" == "DOLLARS" ]

then
        if [ "$pound" == "$amount"*0.74 ] &&  [ "$euro" == "$amount"*0.88 ]
        then
                echo "dollars functional";
                fi
        else
                echo "An issue has occured";
                exit 1;
		fi

elif [ "$currency" == "pounds" ] || ["$currency" == "Pounds" ] ||  [ "$currency" == "POUNDS" ]

then
        if [ "$dollar" == "$amount"*1.36 ] && [ "$euro" == "$amount"*1.19 ]
        then
                echo "pounds functional";
                fi
        else
                echo "An issue has occured";
                exit 1;
		fi 


elif [ "$currency" == "euros" ] || [ "$currency" == "Euros" ] || [ "$currency" == "EUROS" ]

then
        if [ "$dollar" == "$amount"*1.13 ] && [ "$pound" == "$amount"*0.84 ]
        then
                echo "euros functional";
                fi
        else
                echo "An issue has occured";
                exit 1;
fi
else
        echo "Please enter a valid currency";
        fi

