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

# Method to update the quantity of an item
# input: take list, item desired to update and quantity number
# steps: take item that needs to be updated and re asign value with quanitity number
# output: print new list



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