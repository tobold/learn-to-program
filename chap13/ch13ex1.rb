#Chapter 13

=begin

class Integer 
	def to_eng
		if self == 5 
			english = 'five'
		else
			english = 'forty-two' 
		end
		english
	end 
end

puts 42.to_eng

=end

#13.1

class Array
	def shuffle
		shuffled_array = []
		temp_array = self
			while temp_array.length > 0
				length = temp_array.length
				selected = temp_array[rand(length)]
				temp_array = temp_array - [selected]
				shuffled_array << selected
			end
		return shuffled_array
	end
end

puts ['Emmanuelle', 'Toby', 'Florie', 'Naomi', 'Mathias'].shuffle