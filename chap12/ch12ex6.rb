#Chapter 12

#12.6
=begin
def roman_numeral roman
	digit_vals = {	'i' => 1, 
					'v' => 5, 
					'x' => 10, 
					'l' => 50, 
					'c' => 100, 
					'd' => 500, 
					'm' => 1000}

total = 0
prev = 0
index = roman.length - 1 

while index >= 0
	c = roman[index].downcase 
	index = index - 1
	val = digit_vals[c]
	if !val
    	puts 'This is not a valid roman numeral!'
		return 
	end

	if val < prev 
		val = val * -1
	else
		prev = val
	end
        total = total + val
	end
	
	total
end

puts(roman_to_integer('mcmxcix'))
=end

#Birthday helper!
database = {}

File.read('namedatabase.txt').each_line do |line|
	line = line.chomp
	namesarray = line.split(',')
	name = namesarray[0]
	date = namesarray[1] + ' ' + namesarray [2]
	database[name] = date
end

puts 'Enter name'
namesearch = gets.chomp
puts database[namesearch]