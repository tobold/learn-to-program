#Chapter 14

#14.4

=begin
	
rescue Exception => e
	
end
def profile block_description, &block

	#
	switch = false
	#

	if switch == true
		start_time = Time.new
		block.call
		duration = Time.new - start_time
		puts "#{block_description}: #{duration} seconds"
	elsif switch == false
		block.call
	end
end

profile '25000 doublings' do
	number = 1

	25000.times do
		number = number + number
	end

	puts "#{number.to_s.length} digits"
end

profile 'count to a million' do
	number = 0
	1000000.times do
		number = number + 1
	end
end

=end

#Grandfather clock

=begin

def grandfather_clock(&block)
	hours = Time.new.hour
	if hours > 12
		hours = hours - 12
	end

	hours.times do 
		block.call 
	end
end

grandfather_clock do
	puts "DONG!"
end

=end

#Program Logger

$tabsorspaces = 0

def log description, &block
	puts ("  " * $tabsorspaces) + "Beginning #{description}..."
	$tabsorspaces = $tabsorspaces + 1
	answer = block.call
	$tabsorspaces = $tabsorspaces - 1
	puts ("  " * $tabsorspaces) + "...#{description} finished, returning:"
	puts ("  " * $tabsorspaces) + answer.to_s
end

log 'outer block' do
	log 'some little block' do
		log 'a third block' do
			8*9
		end
		1**1 + 2**2
	end
	log 'yet another block' do 
		'!doof iahT ekil I'.reverse
	end
	'0' == 0 
end