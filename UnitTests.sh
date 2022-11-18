#!/bin/bash
test=`java CurrencyConverter 50 dollars`;
echo ="$test";

expectedOutput="=50.0 Dollars = 37 Pounds
50.0 Dollars = 44 Euros";

echo "$expectedOutput";

if [ "$expectedOutput" == "$test" ]
then
	echo "Dollars test successful";
else:
	echo "A maths issue has occured";
fi
