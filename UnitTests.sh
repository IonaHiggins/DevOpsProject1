#!/bin/bash

#Describes the test.
echo "Testing inputs";

#Describes the input values which the program will run with.
currency=$"DOLLARS";
amount=$"50";

#Prints the inputs to Jenkins console
echo "The inputted currency is:" + "$currency";
echo "The inputted amount is:" + "$amount";

#Checks if either input string is empty; if this is true, the user is given an error message and the program exits.

if [ "$currency" == "" ] || [ "$amount" == "" ]
then
	echo "Please input both a valid currency and amount.";
	echo "Test Failed";
	exit 1;

#Checks if the dollars input has been fully capitalised or capitalised at the beginning. If this is true, the capitalisation is removed to avoid errors.
elif [ "$currency" == "Dollars" ] || [ "$currency" == "DOLLARS" ]	
then
	currency=$"dollars"
	echo "Valid currency type";
	echo "Test Passed";



#Checks if the pounds input has been fully capitalised or capitalised at the beginning. If this is true, the capitalisation is removed to avoid errors.
elif [ "$currency" == "Pounds" ] || [ "$currency" == "POUNDS" ]
then 
	currency=$"pounds";
	echo "Valid currency type";
	echo "Test Passed";

#Checks if the euros input has been fully capitalised or capitalised at the beginning. If this is true, the capitalisation is removed to avoid errors.
elif [ "$currency" == "Euros" ] || [ "$currency" == "EUROS" ]
then 
	currency=$"euros";
	echo "Valid Currency Type";
	echo "Test Passed";

#Catches any other currency input; gives the user an error message and exits the program.
else
	echo "Invalid currency inputted. Please select from dollars, pounds, or euros.";
	echo "Test Failed";
	exit 2;
fi

#Runs the java CurrencyConverter program if the above tests all pass.
test=`java CurrencyConverter "$amount" "$currency"`;

#Prints the results of the java CurrencyConverter program to the Jenkins shell.
echo "$test";
