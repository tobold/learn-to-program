#Chapter 8

#8.3
puts 'Enter words to be sorted'
wordlist = []
while true
	word = gets.chomp
	if word == ''
		break
	else
		wordlist.push word
	end
end
puts wordlist.sort

tableofcontents = [['Chapter 1:  Getting Started', 	1],
				   ['Chapter 2:  Numbers', 			9],
				   ['Chapter 3:  Letters', 			13]]

puts 'Table of Contents'.center(50)

tableofcontents.each do |chapter|
	chaptitle = chapter[0]
	page = chapter[1]
	puts chaptitle.to_s.ljust(30) + page.to_s.rjust(30)
end