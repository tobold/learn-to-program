#Chapter 12

#12.2
#One billion seconds!
puts "When were you born? Enter in the format DD/MM/YYYY"
birthday = gets.chomp.gsub!('/', ' ').split(/ /)
bday = Time.local(birthday[2], birthday[1], birthday[0])


if bday + 1000000000 > Time.new
	puts "You will turn 1 billion seconds old on " + (bday + 1000000000).to_s
else
	puts "You turned 1 billion seconds old on " + (bday + 1000000000).to_s
end

#Happy birthday!
=begin

bdayloop = bday
while Time.new > (bdayloop + (365 * 24 * 60 * 60))
	bdayloop = bdayloop + (365 * 24 * 60 * 60)
	puts 'SPANK!'
end

=end