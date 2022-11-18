#!/bin/bash
echo "Testing inputs";
currency=$"DOLLARS";
amount =$"50";
echo "The inputted currency is:" + "$currency";
echo "The inputted amount is:" + "$amount";

if [ "$currency" == "" ] || [ "$amount" == "" ]
then
	echo "Please input both a valid currency and amount.";
	echo "Test Failed";
	exit 1;
elif [ "$currency" == "Dollars" ] || [ "$currency" == "DOLLARS" ]	
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
	echo "Invalid currency inputted. Please select from dollars, pounds, or euros.";
	echo "Test Failed";
	exit 2;
fi

test=`java CurrencyConverter "$amount" "$currency"`;
echo "$test";
