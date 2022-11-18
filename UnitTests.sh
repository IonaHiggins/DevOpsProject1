#!/bin/bash
echo "Testing inputs";
currency=$"DOLLARS";
echo "The inputted currency is:" + "$currency";
if [ "$currency" == "Dollars" ] || [ "$currency" == "DOLLARS" ]	
then
	currency=$"dollars"
	echo "Valid currency type";
	echo "Test Passed";

elif [ "$currency" == "Pounds" ] || [ "$currency" == "POUNDS" ]
then 
	currency=$"pounds";
	echo "Valid currency type";
	echo "Test Passed";
elif [ "$currency" == "Euros" ] || [ "$currency" == "EUROS" ]
then 
	currency=$"euros";
	echo "Valid Currency Type";
	echo "Test Passed";
else
	echo "Invalid currency inputted.";
	echo "Test Failed";
	exit 1;
fi

test=`java CurrencyConverter 50 "$currency"`;
echo "$test";
