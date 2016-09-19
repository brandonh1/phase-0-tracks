puts "How many employees will be processed?"
employees = gets.chomp.to_i

until employees == 0
	puts "What is your name?"
	name = gets.chomp.downcase
	puts "How old are you?"
	age = gets.chomp.to_i
	puts "What year were you born?"
	birth_year = gets.chomp.to_i
	puts "Our company cafeteria serves garlic bread. Should we order some for you?(y/n)"
	garlic_bread = gets.chomp
	puts "Would you like to enroll in the company's health insurance?(y/n)"
	health_insurance = gets.chomp

	if name == "drake cula" || name == "tu fang"
		puts "Definitely a vampire."
	elsif (age != Time.now.year - birth_year) && (garlic_bread == 'y' || health_insurance == 'y')
		puts "Probably not a vampire."
	#if i put "Probably a vampire" first it will always go to that result instead of
	#"Almost certainly a vampire."
	elsif age != Time.now.year - birth_year && garlic_bread == 'n' && health_insurance == 'n'
		puts "Almost certainly a vampire."
	elsif (age != Time.now.year - birth_year ) && (garlic_bread == 'n' || health_insurance == 'n')
		puts "Probably a vampire."
	else
		puts "Results inconclusive."
	end

	allergies = ""
	puts "Name any allergies you have, one at a time. Type 'done' when finished."
	while allergies != "done"
		allergies = gets.chomp.downcase
		if allergies == "sunshine"
			result = allergies
		end
	end
	if result == "sunshine"
		puts "Probably a vampire."
	end

	employees-= 1
end
	
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."