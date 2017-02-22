def cashregister(amount)

 change = {}
 if amount == 0 
 	{}
 elsif amount == 5 
 	change = {Nickels: 1}
 else amount < 5 
 change = {Pennies: amount}
	
 end

  change
end