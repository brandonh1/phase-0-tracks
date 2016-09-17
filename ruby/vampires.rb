puts "What is your name?"
name = gets.chomp.downcase
puts "How old are you? What year were you born?"
age = gets.chomp
puts "Our company cafeteria serves garlic bread. Should we order some for you?(y/n)"
garlic_bread = gets.chomp
puts "Would you like to enroll in the company's health insurance?(y/n)"
health_insurance = gets.chomp

if (age.to_i < 120) && (garlic_bread == 'y' || health_insurance == 'y')
	puts "Probably not a vampire."
elsif (age.to_i >= 120) && (garlic_bread == 'n' || health_insurance == 'n')
	puts "Probably a vampire."
elsif age.to_i >= 120 && garlic_bread == 'n' && health_insurance == 'n'
	puts "Almost certainly a vampire."
elsif name == "drake cula" || name == "tu fang"
	puts "Definitely a vampire."
else
	puts "Results inconclusive."
end


	