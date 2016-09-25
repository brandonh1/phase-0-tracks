#release 1

fruits = [
	"apple",
	"orange",
	"grape",
	"mango",
	"watermelon"
]

favorite_fruits = {
	ted: "apple",
	ryan: "orange",
	mark: "grape",
	bill: "mango",
	brian: "watermelon"
}

puts "Before we use .each and .map"
p fruits
p favorite_fruits

fruits.each do |fruit|
	puts "#{fruit} tastes great."
end

favorite_fruits.each do |name,fruit|
	puts "#{name}'s favorite fruit is #{fruit}."
	
end
puts "----------"
puts "After we use .each."
p fruits
p favorite_fruits

#after modifying
fruits.map! do |fruit|
	fruit = "#{fruit} juice"
end

puts "----------"
puts "After we modify it with .map!"
p fruits

#release 2
puts "----------Release 2-----------"
puts "Original Array"
p numbers = [2,11,23,16,3,10,6,1,21,11]
puts "Erase any number less than 5."
p numbers.delete_if {|number| number < 5}
puts "Keep any number greater than 10."
p numbers.keep_if {|number| number > 10}
puts "Keep odd numbers."
p numbers.select{|number| number.odd?}
puts "Drop number less than 12 and stops dropping when the number is > than 12."
p numbers.drop_while{|number| number < 12}
puts "-----------------"
puts "Original Hash."
p hash_numbers = {
	1=>1,
	2=>2,
	3=>3,
	4=>4,
	5=>5,
	6=>6
}
puts "Erase any number less than 2."
p hash_numbers.delete_if{|key,value| value < 2}
puts "Keep any number greater than 3."
p hash_numbers.keep_if{|key,value| value > 3}
puts "Keep even numbers."
p hash_numbers.select{|number| number.even?}