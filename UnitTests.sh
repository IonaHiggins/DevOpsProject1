#!/bin/bash
test=`java CurrencyConverter 50 dollayrs`;
echo "$test";
echo "$currency";
echo "$amount";
echo "$pound";
echo "$euro;"

if [ "$currency" == "dollars" ] || [ "$currency" == "Dollars" ] || [ "$currency" == "DOLLARS" ]

then
        if [ "$pound" == "$amount"*0.74 ] &&  [ "$euro" == "$amount"*0.88 ]
        then
                echo "dollars functional";
                fi
        else
                echo "A maths issue has occured(dollars)";
                exit 1;
		fi

elif [ "$currency" == "pounds" ] || ["$currency" == "Pounds" ] ||  [ "$currency" == "POUNDS" ]

then
        if [ "$dollar" == "$amount"*1.36 ] && [ "$euro" == "$amount"*1.19 ]
        then
                echo "pounds functional";
                fi
        else
                echo "A maths issue has occured(pounds)";
                exit 1;
		fi 


elif [ "$currency" == "euros" ] || [ "$currency" == "Euros" ] || [ "$currency" == "EUROS" ]

then
        if [ "$dollar" == "$amount"*1.13 ] && [ "$pound" == "$amount"*0.84 ]
        then
                echo "euros functional";
                fi
        else
                echo "A maths issue has occured (euros)";
                exit 1;
fi
else
        echo "Please enter a valid currency";
        fi

