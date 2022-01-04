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
