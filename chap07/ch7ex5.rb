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
while true
	question = gets
	year = 1930 + rand(21)
	if question.chomp == 'BYE'
		break
	elsif question.chomp == question.upcase
		puts 'NO, NOT SINCE ' + year.to_s
	else
		puts 'HUH?! SPEAK UP, SONNY!'
	end
end