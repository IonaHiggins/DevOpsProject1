import java.util.*
import java.text.DecimalFormat;

public class CurrencyConverter{
	
	public static void main(String[] args){
	double amount;
	double dollar;
	double pound;
	double euro;

	DecimalFormat f = new DecimalFormat("##.##");
	
	amount = int.parseInt(args[0]);
	String currency = args[1];
		
	//For amounts Conversion
	switch (currency){
		case "dollars":
		//For Dollar Conversion
			pound = (amount * 0.74);
			logger.log(amount + " Dollars = " + f.format(pound) + " Pounds");
			euro = (amount * 0.88);
			logger.log(amount + " Dollars = " + f.format(euro) + " Euros");
			break;
		case "pounds":
			//For Pound Conversion
			dollar = (amount * 1.36);
			logger.log(amount + " Pounds = " + f.format(dollar) + " Dollars");
			euro = (amount * 1.19);
			logger.log(amount + " Pounds = " + f.format(euro) + " Euros");
			break;
		case "euros":
			//For Euro Conversion
			dollar = (amount * 1.13);
			logger.log(amount + " Euros = " + f.format(dollar) + " Dollars");
			pound = (amount * 0.84);
			logger.log(amount + " Euros = " + f.format(pound) + " Pounds");		
			break;
		default: 
			error("An error has occured");
			break;
		}
	logger.log("Thank you for using the converter.");
	}
}	



