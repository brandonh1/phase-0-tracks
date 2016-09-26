def vowel_move(vowel)
	vowels = "aeiou"
	if vowel == 'u'
		return 'a'
	end
	vowels[vowels.index(vowel) + 1]

end

def consonant_move(consonant)
	consonants = "bcdfghjklmnpqrstvwxyz"
	if consonant == 'z'
		return 'b'
	end
    consonants[consonants.index(consonant) + 1]

end

def vowel_or_consonant(char)
	vowels = "aeiou"
    if vowels.include? char
    	return true
	else
		return false
	end
end

def swap_name(string)
	return string if !string.include? " "
	array = string.split
	first_name = array[0]
	last_name = array[1]
	temp_name = first_name
	first_name = last_name
	last_name = temp_name
	string = first_name + " " +last_name
end

def upper_case(string)
	array = string.split
	first_name = array[0].split("")
	last_name = array[1].split("")
	first_name[0].upcase!
	last_name[0].upcase!
	string = first_name.join("") + " " +last_name.join("")
end

name_storage = {}
lowered_name = ""
loop do
	puts "Enter the full names that you like to be changed. Type 'quit' to stop "
	original_name = gets.chomp
	lowered_name = original_name.downcase
	if lowered_name == "quit"
		break
	end
	switched_name = swap_name(lowered_name).split #turns into an array with 2 elements
	#turns both into an array so it can be looped
	first_name = switched_name[0].split("")
	last_name = switched_name[1].split("")

	new_first_name = first_name.map do |letter|
		if vowel_or_consonant(letter) == true
			vowel_move(letter)
		else
			consonant_move(letter)
		end
	end

	new_last_name = last_name.map do |letter|
		if vowel_or_consonant(letter) == true
			vowel_move(letter)
		else
			consonant_move(letter)
		end
	end

	new_full_name = new_first_name.join("") + " " + new_last_name.join("")
	name_storage[original_name] = upper_case(new_full_name)
	
end

name_storage.each do |name,fake_name|
	puts "#{name}'s name is actually #{fake_name}." 
end
