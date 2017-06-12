#Chapter5

#5.1
var1 = 2
var2 = '5'
puts var1.to_s + var2
puts var1 + var2.to_i

puts '15'.to_f
puts '99.999'.to_f
puts '99.999'.to_i
puts '5 is myfavorite number!'.to_i
puts 'who asked oyu about 5 or whatever?'.to_i

#5.2
puts 20
puts 20.to_s
puts '20'

#5.3
puts gets

#5.5
puts 'Hello there, and what\'s your name?'
name = gets.chomp
puts 'Your name is ' + name + '? What a lovely name!'
puts 'Please to meet you, ' + name + '. :)'

#5.6
puts 'Please enter first name'
fname = gets.chomp
puts 'Please enter middle name'
mname = gets.chomp
puts 'Please enter last name'
lname = gets.chomp
puts 'So, if I\'ve done this correctly, your full name is ' + fname + ' ' + mname + ' ' + lname

puts 'Hey, what\'s your favorite number?'
number = gets.chomp.to_i
puts 'Hmm, have you considered ' + (number + 1).to_s + '? I think it\'s a better number.'