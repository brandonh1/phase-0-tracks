#get user's string
#find length of the string
#make a loop that stops when the length of string is hit
#make index variable 
#find first letter of string
#increase it by one letter with .next and store the result in a variable
#increase index
#move on to next letter of string using index
#output result

def encrypt(string)
	result = ""
	index = 0
	until index == string.length
		if string[index] == "z"
			result += "a"
			index += 1
		end
		result += string[index].next
		index += 1
	end
	string = result
end

#get user's string
#find length of the string
#make a loop that stops when the length of string is hit
#make index variable 
#make alphabet variable
#find first letter of string
#find index of first letter in alphabet
#output should be a number
#subtract that number by 1 to go backwards
#indice the result with alphabet
#store result in variable
#increase index
#move on to next letter with index
#output result

def decrypt(string)
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	result = ""
	index = 0
	until index == string.length
		result += alphabet[alphabet.index(string[index])-1]
		index += 1
	end
	string = result
end

puts "Would you like to encrypt or decrypt(type 'encrypt' or 'decrypt')?"
input = gets.chomp
puts "What string would you like to #{input}?"
string = gets.chomp

change = ""
if input == "encrypt"
	change = encrypt(string)
elsif input == "decrypt"
	change = decrypt(string)
end

puts change  