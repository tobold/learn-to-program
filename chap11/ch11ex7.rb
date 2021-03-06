#Chapter 11

#11.7
Dir.chdir '~/users/tobyhamand/pictures/sorted'

pic_names = Dir['~/users/tobyhamand/pictures/unsorted/*.jpgs']

puts 'What would you like to call this batch?'
batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} files:  "

pic_number = 1

pic_names.each do |name|
	print '.' # This is our "progress bar".
	new_name = if pic_number < 10 
		"#{batch_name}0#{pic_number}.jpg"
	else
		"#{batch_name}#{pic_number}.jpg" 
	end

	File.rename name, new_name

	pic_number = pic_number + 1
end