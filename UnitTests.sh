#!/bin/bash
test=`java CurrencyConverter 50 dollars`;

expectedOutput=$"50.0 Dollars = 37 Pounds\n50.0 Dollars = 44 Euros\nThank you for using the converter.";

echo "Testing false inputs"

if [ "$expectedOutput" == "$test" ]
then
	echo "test successful";
else
	echo "An error has occured - unexpected input";
	exit 1;
fi
