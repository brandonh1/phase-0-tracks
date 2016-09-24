application = {}

application[:skills] = []

puts "Enter your full name."
application[:name] = gets.chomp
puts "Enter your age."
application[:age] = gets.chomp
puts "Why do you want to work here?"
application[:reason] = gets.chomp
puts "List all your skills. Type 'done' when finished."
skill = ""
while skill != "done"
	skill = gets.chomp
	if skill != "done"
		application[:skills] << skill
	end
end

puts "Are you able to work overtime if needed?(y/n)"
application[:overtime] = gets.chomp
if application[:overtime] == "y"
	application[:overtime] = true
else
	application[:overtime] = false
end

puts "What answer would you like to change? Type any of the options:
'name', 'age', 'reason', 'overtime', 'skills', or 'none'."
change = gets.chomp
if change != "none"
	puts "Enter the new information for #{change}."
	if change == "overtime" 
		application[change.to_sym] = gets.chomp
		if application[:overtime] == "y"
			application[:overtime] = true
		else
			application[:overtime] = false
		end
    
    elsif change == "skills"
    	skill = ""
    	application[:skills] = []
    	while skill != "done"
			skill = gets.chomp
			if skill != "done"
				application[:skills] << skill
			end
		end
	else
		application[change.to_sym] = gets.chomp
	end
end

puts "We will let you know if you are hired ASAP."

puts application