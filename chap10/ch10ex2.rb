#Chapter 10

#10.2
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
		if entry < smallest
			unsorted.push smallest
			smallest = entry
		else
			unsorted.push entry
		end
	end
	sorted_array.push smallest
	recursive_sort unsorted, sorted_array
end

puts sort ['Emmanuelle', 'Toby', 'Florie', 'Naomi', 'Mathias']