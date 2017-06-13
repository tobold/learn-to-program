#Chapter5

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