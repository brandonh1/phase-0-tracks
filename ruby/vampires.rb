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
    
    correct_age = ""
    #Time.now.year - 1 if the user did not reach their birthday this year
    #example. 2016 - 1992 = 24. I am 23 and won't be 24 until november.
	if Time.now.year - birth_year == age || Time.now.year-1 - birth_year == age
		correct_age = true
	else 
		correct_age = false
	end

	allergies = ""
	result = ""
	puts "Name any allergies you have, one at a time. Type 'done' when finished."
	while allergies != "done"
		allergies = gets.chomp.downcase
		if allergies == "sunshine"
			result = allergies
			#option to end the loop if one of their allegries is sunshine
			#break
		end
	end

	if name == "drake cula" || name == "tu fang"
		puts "Definitely a vampire."
	elsif result == "sunshine"
		puts "Probably a vampire."	
	elsif (correct_age) && (garlic_bread == 'y' || health_insurance == 'y')
		puts "Probably not a vampire."
	#If I put "Probably a vampire" first it will always go to that result instead of
	#"Almost certainly a vampire."
	elsif !correct_age && garlic_bread == 'n' && health_insurance == 'n'
		puts "Almost certainly a vampire."
	elsif ( !correct_age) && (garlic_bread == 'n' || health_insurance == 'n')
		puts "Probably a vampire."
	else
		puts "Results inconclusive."
	end

	employees-= 1
end
	
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."