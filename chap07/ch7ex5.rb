#Chapter 7

#7.5
bottles = 99
while true
	puts bottles.to_s + ' bottles of beer on the wall, ' + bottles.to_s + ' bottles of beer.'
	puts 'you take one down and pass it around...'
	bottles = bottles - 1
	puts bottles.to_s + ' bottles of beer on the wall.'
	puts
	if bottles == 1
		puts '1 bottle of beer on the wall'
		break
	end
end

puts "HELLO?"
bye = 0
while bye < 3
	question = gets
	year = 1930 + rand(21)
	if question.chomp == 'BYE'
		puts 'THAT\'S NICE DEAR'
		bye = bye + 1
	elsif question.chomp == question.upcase
		puts 'NO, NOT SINCE ' + year.to_s
		bye = 0
	else
		puts 'HUH?! SPEAK UP, SONNY!'
		bye = 0
	end
end

puts 'Enter starting year'
year = gets
year = year.to_i
puts 'Enter ending year'
endyear = gets
endyear = endyear.to_i
puts 'Leap years in the given year range are:'
while year <= endyear
	if year % 400 == 0
		puts year
	elsif year % 100 == 0
	elsif year % 4 == 0
		puts year
	end
	year = year + 1
end