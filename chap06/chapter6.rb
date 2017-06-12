#Chapter 6

#puts, gets, chomp, to_i, to_s, to_f ...
puts ('hello '.+ 'world')
puts ((10.* 9).+ 9)

puts self

#6.1
var1 = 'stop'
var2 = 'delivery repaid desserts'
var3 = '....TCELES B HSUP A magic spell?'

puts var1.reverse
puts var2.reverse
puts var3.reverse
puts var1
puts var2
puts var3

puts 'What is your full name?'
name = gets.chomp
puts 'Did you know there are ' + name.length.to_s + ' characters'
puts 'in your name, ' + name + '?'

puts 'What is your first name?'
fname = gets.chomp
puts 'What is your middle name?'
mname = gets.chomp
puts 'What is your last name?'
lname = gets.chomp
puts 'Did you know there are ' + (fname.length + mname.length + lname.length).to_s + ' letters'
puts 'in your name, ' + fname + '?'

letters = 'aAbBcCdDeE'
puts letters.upcase
puts letters.downcase
puts letters.swapcase
puts letters.capitalize
puts ' a'.capitalize
puts letters

line_width = 50
puts('Old Mother Hubbard'.center(line_width))
puts('Sat in her cupboard'.center(line_width))
puts('Eating her curds and whey,'.center(line_width))
puts('When along came a spider'.center(line_width))
puts('Who sat down beside her'.center(line_width))
puts('And scared her poor shoe dog away.'.center(line_width))


line_width = 40
str = '--> text <--'
puts(str.ljust( line_width))
puts(str.center(line_width))
puts(str.rjust( line_width))
puts(str.ljust(line_width/2) + str.rjust(line_width/2))

#6.2
puts 'WHAT DO YOU WANT?!'
response = gets.chomp
puts 'WHADDAYA MEAN "' + response.upcase + '"?!? YOU\'RE FIRED!!'

line_width = 60
puts('Table of Contents'.center(line_width))
puts('Chapter 1:  Getting Started'.ljust(line_width/2) + 'page  1'.rjust(line_width/2))
puts('Chapter 2:  Numbers'.ljust(line_width/2) + 'page  9'.rjust(line_width/2))
puts('Chapter 3:  Letters'.ljust(line_width/2) + 'page 13'.rjust(line_width/2))

#6.4
puts 5**2
puts 5**0.5
puts 7/3
puts 7%3
puts 365%7

puts (5-2).abs
puts (2-5).abs

#6.5
puts rand
puts rand
puts rand(100)
puts rand(100)
puts ('The weatherman said there is a ' + rand(101).to_s + '% chance of rain.')

srand 1976
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts ''
srand 1976
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))

#6.6
puts(Math::PI)
puts(Math::E)
puts(Math.cos(Math::PI/3))
puts(Math.tan(Math::PI/4))
puts(Math.log(Math::E**2))
puts((1 + Math.sqrt(5))/2)