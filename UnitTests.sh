#!/bin/bash
test=`java CurrencyConverter 50 dollars`;

expectedOutput=$"50.0 Dollars = 37 Pounds
50.0 Dollars = 44 Euros
Thank you for using the converter.";

echo "Testing false inputs";

if [ "$expectedOutput" == "$test" ]
then
	echo "Input recieved.";
	echo "Test Passed";
else
	echo "An error occured - unexpected input";
	echo "Test Failed";
	exit 1;
fi

echo "Testing input variation";

input ="DOLLARS";
echo "$input";

if [ "$input" == *"$dollars"* ] || [ "$input"  == *"$Dollars"* ] || [ "$input" == *"DOLLARS"* ] || [ "$input" == *"pounds"* ] ||  [ "$input" == *"Pounds"* ] || [ "$input" == *"POUNDS"* ] || [ "$input" == *"euros"* ] || [ "$input" == *"Euros"* ] || [ "$input" == *"EUROS"* ]

then
	echo "Valid currency type";
	echo "Test Passed";
else
	echo "An error occured - unexpected input";
	echo "Test Failed";
	exit 2;
fi
