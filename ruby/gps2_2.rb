# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # create a hash
  # store the string input into an array
  # use a loop to enter items from array into the hash
  # set default quantity = 1
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]
def create_list(new_list = "")
  grocery_list = {}
  list_array = new_list.split(" ")
  list_array.each do |item|
    grocery_list[item] = 1
  end
  print_list(grocery_list)
  
end

# Method to add an item to a list
# input: item name and optional quantity
# steps: take a list and item as a parameter
# store into hash
# output: print the new list

def add_item(list, item, quantity = 1)
  list[item] = quantity
  print_list(list)
end

# Method to remove an item from the list
# input: take a list and item that you want to remove
# steps: find if item is on the list
# if it is on the list delete it
# if not return nil
# output: print new list

def remove_item(list, item_to_remove)
  list.delete_if {|item,quantity| item == item_to_remove}
  print_list(list)
end

# Method to update the quantity of an item
# input: take list, item desired to update and quantity number
# steps: take item that needs to be updated and re asign value with quanitity number
# output: print new list

def update_quantity(list, item, quantity)
  list[item] = quantity
  print_list(list)
end

# Method to print a list and make it look pretty
# input: take a list as parameter
# steps: use loop(.each) to print items
# print quantity first then item
# output: print new list
def print_list(list)
  puts "\nGrocery List"
  list.each do |item,quantity|
    puts "#{item}: #{quantity}"
  end
end

list = create_list
add_item(list, "lemonade", 2)
add_item(list, "tomatoes", 3)
add_item(list, "onion")
add_item(list, "ice cream",4)
remove_item(list, "lemonade")
update_quantity(list, "ice cream", 1)

#reflection
=begin
Pseudocode helped create the methods a lot easier. We basically
followed the steps we layed out in the psuedocode.

Using arrays made it easier to store the items into the hashes.
I'm not sure of an easy way to directly store the items 
entered in a string into a hash. With a hash we can associate the
item and the quantity, something we can't do with arrays.

You can pass arrays, hashes, integers, strings, into methods. probably
a lot more too like chars.

We put a method inside another method to print out a list.

I had a better grasp of storing information into a hash and 
modifiying it.
=end