class Players
	attr_accessor :name, :shortname, :score

	def initialize(name,shortname)
		@name = name
		@shortname = shortname
		@score = 3
	end

	def lose_score
		@score = @score-1
	end
	
	def disp_score
		puts "#{score}/3"
	end


end

# p1 = Players.new("Player1","P1")
# p2  =Players.new("Player2")
# p p1
# p p2
		
# p1.win_score