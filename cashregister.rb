def cashregister(amount)
	
	quarters = 25
	dimes = 10
	nickels = 5
	pennies = 1
	
  change = {}
 	

 	if amount > 25 && amount < 30
		change[:quarters] = 1 
		change[:pennies] = amount - 25
 	elsif amount == 25 
		change = {quarters: 1}
 	elsif amount >= 20 && amount < 25
 		change[:dimes] = 2
 		change[:pennies] = amount - 20
 	elsif amount > 15 && amount < 20
		change[:dimes] = 1 
		change[:nickels] = 1
		change[:pennies] = amount - 15
 	elsif amount > 10 && amount < 15
		change[:dimes] = 1 
		change[:pennies] = amount - 10
	elsif amount == 10 
		change = {dimes: 1}
	change = {dimes: 1}
 	elsif	amount == 0 
 		{}
 	elsif amount == 5 
 		change = {nickels: 1}
 	elsif amount < 5 
 		change = {pennies: amount}
	else amount > 5 
		change[:nickels] = 1 
		change[:pennies] = amount - 5
	
		
		
 end

  change
end