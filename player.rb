class Players
	attr_accessor :name, :shortname, :score

	def initialize(name,shortname)
		@name = name
		@shortname = shortname
		@turns = 3
		@score = 0
	end

	def win_score
		@score = @score+1
		puts "#{score}/3"
	end
	
	def lose_score
		puts "#{score}/3"
	end

end

# p1 = Players.new("Player1")
# p2  =Players.new("Player2")
# p p1
# p p2
		
