#release 0
def search(array,value)
	found = ""
	index = 0

	#This way works and returns right away without having to check the whole
	#array, but I'm not sure if include? is allowed.
	#if !array.include? value
	#	return nil
	#end

	array.each do |number|
		if value == number
			found = index
		end
		index += 1
	end

	if found == ""
		found = nil
	end
	found
end

array = [1,2,3,4]
value = 4

p search(array,value)

#release 1

def fibonacci(number)

	if number == 0
		return 0
	end
	if number == 1
		return 1
	end

	array = [0,1]
	#make a variable length instead of array.length to stop infinite loop 
	#when I add a new number to the array
	length = number - 2 # 2 is because the array starts with 2 numbers
    index = 0
    #last_number = 0
    while index < length 
    	array << array[-1] + array[-2]
    	#last_number = array[-1]
    	index += 1
    end
    #last_number
    array
end

p fibonacci(6)

#release 2

#insertion sort builds the final sorted array one item at a time

#I read about bubble sort on wiki and the whole explanation helps.
#There is visiualization, psuedocode then the actual code.

#I think it is interesting to see a popular sort code that is accepted.
#My first 2 releases solve the problem but I don't know if it is optimized.

# 
def sort(array)
	temp = ""
	count = 0
	while count < array.length - 1
		index = 0
		while index < array.length - 1
			if array[index] > array[index+1] 
				temp = array[index] 
				array[index] = array[index + 1] 
				array[index + 1] = temp
				index = 0
			end
			index += 1
		end
		count += 1
	end
end

a = [5,3,2,6,11]

sort(a)

p a