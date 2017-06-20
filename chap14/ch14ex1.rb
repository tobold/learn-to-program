#Chapter 14

=begin

toast = Proc.new do
	puts 'Cheers!'
end

toast.call
toast.call
toast.call

do_you_like = Proc.new do |good stuff|
	puts "I really like #{good_stuff}!"
end

do_you_like.call 'chocolate'
do_you_like.call 'Ruby'

#14.1
def do_self_importantly some_proc
	puts "Everyone just HOLD ON! I'm doing something..."
	some_proc.call
	puts "OK everyone. I'm done. As you were."
end

say_hello = Proc.new do 
	puts 'hello'
end

say_goodbye = Proc.new do
	puts 'goodbye'
end

do_self_importantly say_hello
do_self_importantly say_goodbye

def maybe_do some_proc
	if rand(2) == 0
		some_proc.call
	end
end

def twice_do some_proc
	some_proc.call
	some_proc.call
end

wink = proc.new do
	puts '<wink>'
end

glance = proc.new do
	puts '<glance>'
end

maybe_do wink
maybe_do wink
maybe_do glance
maybe_do glance
twice_do wink
twice_do glance

=end

def do_until_false first_input, some_proc
	input = first_input
	output = first_input

	while output
		input = output
		output = some_proc.call input
	end

	input
end

build_array_of_squares = Proc.new do |array|
	last_number = array.last
	if last_number <= 0
		false
	else
		array.pop
		array.push last_number * last_number
		array.push last_number - 1
	end
end

always_false = Proc.new do |nothing|
	false
end

puts do_until_false([8], build_array_of_squares).inspect

yum = 'yummy'
puts do_until_false(yum, always_false)