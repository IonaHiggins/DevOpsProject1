#!/bin/bash
test=`java CurrencyConverter`;
echo ="$test";

expectedOutput="+ ./UnitTests.sh
=50.0 Dollars = 37 Pounds
50.0 Dollars = 44 Euros";


if [ "$expectedOutput" == "$test" ]
then
	echo "test successful";
else
	echo "An error has occured - unexpected input";
	exit 1;
fi
