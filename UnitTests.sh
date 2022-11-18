#!/bin/bash

#Describes the test.
echo "Testing inputs";

#Describes the input values which the program will run with.
currency=$"euros";
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
elif  [ "$currency" == "dollars" ] || [ "$currency" == "Dollars" ] || [ "$currency" == "DOLLARS" ]	
then
	currency=$"dollars"
	echo "Valid currency type";
	echo "Test Passed";
	
	echo "Testing Arithmatic";
	expectedOutput=$"50.0 Dollars = 37 Pounds
50.0 Dollars = 44 Euros
Thank you for using the converter.";



#Checks if the pounds input has been fully capitalised or capitalised at the beginning. If this is true, the capitalisation is removed to avoid errors.
elif [ "$currency" == "pounds" ] || [ "$currency" == "Pounds" ] || [ "$currency" == "POUNDS" ]
then 
	currency=$"pounds";
	echo "Valid currency type";
	echo "Test Passed";
	
	echo "Testing Arithmatic";
	expectedOutput=$"50.0 Pounds = 68 Dollars
50.0 Pounds = 59.5 Euros
Thank you for using the converter.";

#Checks if the euros input has been fully capitalised or capitalised at the beginning. If this is true, the capitalisation is removed to avoid errors.
elif [ "$currency" == "euros" ] || [ "$currency" == "Euros" ] || [ "$currency" == "EUROS" ]
then 
	currency=$"euros";
	echo "Valid Currency Type";
	echo "Test Passed";

	echo "Testing Arithmatic";
	expectedOutput=$"50.0 Euros = 65.5 Dollars
50.0 Euros = 42 Pounds
Thank you for using the converter.";
	echo "$expectedOutput";

#Catches any other currency input; gives the user an error message and exits the program.
else
	echo "Invalid currency inputted. Please select from dollars, pounds, or euros.";
	echo "Test Failed";
	exit 2;
fi

#Runs the java CurrencyConverter program if the above tests all pass.
test=`java CurrencyConverter "$amount" "$currency"`;

if [ "$expectedOutput" == "$test" ]
then

	#Prints the results of the java CurrencyConverter program to the Jenkins shell.
	echo "$test";
	echo "All currency conversions successful";
	echo "Test Passed";
else
	echo "An arithmatic error has occured"
	echo "Test Failed";
	exit 3;
fi

