def cashregister(amount)

  change = {}
 	if amount > 10 
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