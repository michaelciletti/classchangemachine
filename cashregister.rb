def cashregister(amount)

  change = {}
 	if amount == 0 
 		{}
 	elsif amount == 5 
 		change = {Nickels: 1}
 	elsif amount < 5 
 		change = {Pennies: amount}
	# elsif amount == 6
	# 	change = {Nickels: 1, Pennies: 1}
	elsif amount >= 5
		change[:Nickels] = 1 
		change[:Pennies] = amount - 5

	else amount == 10 
		change = {Dimes: 1}
		
		
 end

  change
end