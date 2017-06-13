#Chapter 6

#6.2
puts 'WHAT DO YOU WANT?!'
response = gets.chomp
puts 'WHADDAYA MEAN "' + response.upcase + '"?!? YOU\'RE FIRED!!'

line_width = 60
puts('Table of Contents'.center(line_width))
puts('Chapter 1:  Getting Started'.ljust(line_width/2) + 'page  1'.rjust(line_width/2))
puts('Chapter 2:  Numbers'.ljust(line_width/2) + 'page  9'.rjust(line_width/2))
puts('Chapter 3:  Letters'.ljust(line_width/2) + 'page 13'.rjust(line_width/2))