#Chapter 9

#9.5
=begin
def ask question 
	while true
    	puts question
    	reply = gets.chomp.downcase
		if (reply == 'yes' || reply == 'no') 
			if reply == 'yes'
				return true
			else
        		return false
			end
			break 
		else
      		puts 'Please answer "yes" or "no".'
      	end
    end
end

puts 'Hello, and thank you for...'
puts
ask 'Do you like eating tacos?'
wets_bed = ask 'Do you wet the bed?'
puts 'Just a few more questions...'
ask 'Do you like drinking horchata?'
ask 'Do you like eating flautas?'
puts
puts 'DEBRIEFING:'
puts 'Thank you for...'
puts
puts wets_bed
=end
#---------

#9.5 'old school roman numerals'
def old_roman_numeral number
	numerals = []
	while true
		if number != number.to_i
			puts 'Please enter an integer'
			break
		else
			while number > 0
				if    number % 1000 == 0
					numerals.push 'M'
					number = number - 1000
				elsif number % 500 == 0
					numerals.push 'D'
					number = number - 500
				elsif number % 100 == 0
					numerals.push 'C'
					number = number - 100
				elsif number % 50 == 0
					numerals.push 'L'
					number = number - 50
				elsif number % 10 == 0
					numerals.push 'X'
					number = number - 10
				elsif number % 5 == 0
					numerals.push 'V'
					number = number - 5
				elsif number % 1 == 0
					numerals.push 'I'
					number = number - 1
				end
			end
		puts numerals.join.reverse
		break
		end
	end
end

puts 'Enter date'
number = gets.to_i
puts old_roman_numeral number