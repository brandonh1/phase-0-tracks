mall = {
	brand_clothes: {
		"shirt" => 30,
		"jeans" => 60,
		"jacket" => 55,
		"sweater" => 40,
		"shorts" => 45
	},

	food_court: {
		sushi: {
			"dragon roll" => 8,
			"california roll" => 6,
			"all you can eat" => 25
		},

		sandwiches: {
			"ham and cheese" => 7,
			"sandburger" =>	9,
			"ultimate sandwich" => 11.5
		},

		express: {
			"fried rice" => 9,
			"chow mein" => 9,
			"egg roll" => 1.5
		}
	},

	dollar_store: ["candy","chips","water",]

}

puts "Welcome to our store."
puts "What would you like to buy? Your options are:"
#prints out all the clothes and their respective price.
mall[:brand_clothes].each do |clothing,price|
	puts "#{clothing} for #{price} dollars."
end
puts "If nothing interests you type 'none'."

purchase = gets.chomp
if purchase != "none"
	#changes the price to sold out when a clothing is purchased.
	mall[:brand_clothes][purchase] = "sold out"
	p mall[:brand_clothes]
	puts "Thanks for your purchase."
end

#----- is to make it a bit more readable when code is ran
puts "-------------"
puts "This is the express food shop."
p mall[:food_court][:express]
puts "Adding another meal to express store and changing price for the rice."
mall[:food_court][:express]["soup"] = 7
mall[:food_court][:express]["fried rice"] = 7.5
p mall[:food_court][:express]

puts "-------------"
puts "This is the dollar store."
p mall[:dollar_store]
puts "Adding more items to the dollar store."
mall[:dollar_store].push("soda","cups","frozen pizza")
p mall[:dollar_store]

puts "-------------"
puts "This is the sushi store."
mall[:food_court][:sushi].each do |food,price| 
	puts "#{food} is #{price} dollars."
end