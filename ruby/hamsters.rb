puts "What is your hamster's name?"
name = gets.chomp
puts "How loud is your hamster(scale from 1-10)?"
volume = gets.chomp.to_f
puts "What is your hamster's fur color?"
fur = gets.chomp
puts "Is the hamster a good candidate for adoption?(y/n)"
adoption = gets.chomp
puts "What is your hamster's estimated age?"
age = gets.chomp.to_i

if age == ""
	age = nil
end

candidate = ""

if adoption == "y"
	candidate = "good"
elsif adoption == "n"
	candidate = "bad"
end

puts "Your hamster's name is #{name}. His loudness is #{volume}. His fur color 
is #{fur}. He is a #{candidate} candidate for adoption. His age is #{age}."