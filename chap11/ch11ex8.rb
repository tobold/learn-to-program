#Chapter 11

#11.8
#Safer picture downloading

=begin

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

	if File.exist new_name
		puts 'File already exists with that name. Overwrite?'
		answer = gets.downcase
			if answer = 'yes'
				File.rename name, new_name
			elsif answer = 'no'
				exit
			else
				puts 'please enter "yes" or "no"'	
	else
		File.rename name, new_name
	end

	pic_number = pic_number + 1
end

=end

#Build your own playlist

#Dir.chdir('/Users/tobyhamand/Music')
music = Dir["#{Dir.home}/Music/*.mp3"]
playlist = []
puts "How many songs in your playlist?"
amount = gets.to_i

while amount > 0
	selection = music[rand(music.length)]
	music.delete(selection)
	amount = amount - 1
	playlist << selection
end

File.open 'playlist.m3u', 'w' do |f|
	playlist.each do |mp3|
		f.write mp3+"\n" 
	end
end