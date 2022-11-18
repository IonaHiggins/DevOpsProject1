#!/bin/bash
test=`java CurrencyConverter 50 dollars`;

expectedOutput=$"50.0 Dollars = 37 Pounds
50.0 Dollars = 44 Euros
Thank you for using the converter.";

echo "Testing false inputs"

if [ "$expectedOutput" == "$test" ]
then
	echo "test successful";
else
	echo "An error has occured - unexpected input";
	exit 1;
fi
