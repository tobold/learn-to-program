#Chapter 13

#13.3
class Die
	def initialize
		roll
	end

	def roll
		@number_showing = 1 + rand(6)
	end

	def showing
		@number_showing
	end

	def cheat number
		if 1 <= number && number <= 6
			@number_showing = number
		else
			puts 'Dice only have 6 sides!'
		end 
	end
end

puts Die.new.showing
die = Die.new
die.roll
puts die.showing
puts die.showing
die.roll
puts die.showing
puts die.showing
die.cheat 6
puts die.showing