def cashregister(amount)

  change = {}
 if amount == 0 
 	{}
 elsif amount == 5 
 	change = {Nickels: 1}
 elsif amount < 5 
 change = {Pennies: amount}
else amount == 6
	change = {Nickels: 1, Pennies: 1}
	
 end

  change
end