#Chapter 10

#10.3
#Shuffle
=begin
def shuffle some_array
	shuffled_array = []
	while some_array.length > 0
		length = some_array.length
		selected = some_array[rand(length)]
		#create new array with all items except 'selected'
		#replace with a function that deletes a specific entry from an array?
		new_array = []
		some_array.each do |item|
			if selected == item
				shuffled_array.push selected
			else
				new_array.push item
			end
		end
		some_array = new_array
	end
	return shuffled_array
end

puts shuffle ['Emmanuelle', 'Toby', 'Florie', 'Naomi', 'Mathias']
=end

#Dictionary sort
def sort some_array
	recursive_sort some_array, []
end

def recursive_sort unsorted_array, sorted_array
	if unsorted_array.length == 0
		return sorted_array
	end

	smallest = unsorted_array.pop
	unsorted = []

	unsorted_array.each do |entry|
		if entry.downcase < smallest.downcase
			unsorted.push smallest
			smallest = entry
		else
			unsorted.push entry
		end
	end
	sorted_array.push smallest
	recursive_sort unsorted, sorted_array
end

puts sort ['emmanuelle', 'toby', 'florie', 'Naomi', 'Mathias']