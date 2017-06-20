#Chapter 13

#13.6
#Orange Tree

=begin

class Orange_Tree

	def initialize
		@height = 1
		@orange_count = 0
	end

	def height
		return @height
	end

	def count_the_oranges
		if @orange_count > 1
			puts "There are #{@orange_count} oranges on the tree"
		elsif @orange_count == 1
			puts "There is #{@orange_count} orange left on the tree"
		else
			puts "There are no oranges on the tree"
		end
	end

	def pick_an_orange
		if @orange_count > 0
			puts "You picked an orange"
			@orange_count -= 1
		else
			puts "There are no oranges to pick!"
		end
	end

	def one_year_passes
		puts "The tree grows"

		if @height == 10
			puts "The orange tree has grown old and dies"
			exit
		end

		if @orange_count > 0
			puts "#{@orange_count} oranges fall from the trees and rot!"
			@orange_count = 0
		end

		@height += 1
		grows_oranges

	end

	private

	def grows_oranges
		if @height > 5
			puts "Some oranges grew this year!"
			@orange_count += 10
		elsif @height > 3
			puts "Some oranges grew this year!"
			@orange_count += 5
		else
			puts "No oranges grew this year."
		end
	end
end

tree = Orange_Tree.new
tree.count_the_oranges
tree.one_year_passes
tree.count_the_oranges
tree.one_year_passes
tree.count_the_oranges
tree.one_year_passes
tree.count_the_oranges
tree.pick_an_orange
tree.pick_an_orange
tree.count_the_oranges
tree.one_year_passes
tree.one_year_passes
tree.count_the_oranges
tree.pick_an_orange
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes

=end

#Interative baby dragon
class Dragon

	def initialize name
		@name = name
		@asleep = false
		@stuff_in_belly = 10
		@stuff_in_intestine = 0

		puts "#{@name} is born."
	end

	def feed
		puts "You feed #{@name}."
		@stuff_in_belly = 10
		passage_of_time
	end

	def walk
		puts "You walk #{@name}."
		@stuff_in_intestine = 0
		passage_of_time
	end

	def put_to_bed
		puts "You put #{@name} to bed."
		@asleep = true
		3.times do
			if @asleep
				passage_of_time
			end
			if @asleep
				puts "#{@name} snores, filling the room with smoke."
			end			
		end
		if @asleep
			@asleep = false
			puts "#{@name} wakes up slowly."
		end
	end

	def toss
		puts "You toss #{@name} up into the air."
		puts "He giggles, which singes your eyebrows."
		passage_of_time
	end

	def rock
		puts "You rock #{@name} gently."
		@asleep = true
		puts "He briefly dozes off..."
		passage_of_time
		if @asleep
			@asleep = false
			puts "...but wakes when you stop."
		end
	end

	private

	def hungry?
		@stuff_in_belly <= 2
	end

	def poopy?
		@stuff_in_intestine >= 8
	end

	def passage_of_time
		if @stuff_in_belly > 0
			@stuff_in_belly = @stuff_in_belly - 1
			@stuff_in_intestine = @stuff_in_intestine + 1
		else
			if @asleep
				@asleep = false
				puts "He wakes up suddenly!"
			end
			puts "#{@name} is starving! In despertion, he ate YOU!"
			exit
		end

		if @stuff_in_intestine >= 10
			@stuff_in_intestine = 0
			puts "Whoops! #{@name} had an accident..."
		end

		if hungry?
			if @asleep
				@asleep = false
				puts "He wakes up suddenly!"
			end
			puts "#{@name}'s stomach grumbles..."
		end

		if poopy?
			if @asleep
				@asleep = false
				puts "He wakes up suddenly!"
			end
			puts "#{@name} does the potty dance..."
		end
	end
end

pet = Dragon.new "Bob"

while true
	puts "Enter command"
	print "> "
	command = gets.downcase.chomp
	if command == "feed"
		pet.feed
	elsif command == "walk"
		pet.walk
	elsif command == "sleep"
		pet.put_to_bed
	elsif command == "toss"
		pet.toss
	elsif command == "rock"
		pet.rock
	else
		puts "Command not found! (commands are: 'feed', 'walk', 'sleep', 'toss', 'rock'"
	end
end
