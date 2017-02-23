def cashregister(amount)

  change = {}
 	if amount > 25 && amount < 30
		change[:Quarters] = 1 
		change[:Pennies] = amount - 25
 	elsif amount == 25 
		change = {Quarters: 1}
 	elsif amount >= 20 && amount < 25
 		change[:Dimes] = 2
 		change[:Pennies] = amount - 20
 	elsif amount > 15 && amount < 20
		change[:Dimes] = 1 
		change[:Nickels] = 1
		change[:Pennies] = amount - 15
 	elsif amount > 10 && amount < 15
		change[:Dimes] = 1 
		change[:Pennies] = amount - 10
	elsif amount == 10 
		change = {Dimes: 1}
	change = {Dimes: 1}
 	elsif	amount == 0 
 		{}
 	elsif amount == 5 
 		change = {Nickels: 1}
 	elsif amount < 5 
 		change = {Pennies: amount}
	# elsif amount == 6
	# 	change = {Nickels: 1, Pennies: 1}
	else amount > 5 
		change[:Nickels] = 1 
		change[:Pennies] = amount - 5
	
		
		
 end

  change
end