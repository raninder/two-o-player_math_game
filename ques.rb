class Question
	attr_accessor :number1, :number2, :question

	def initialize
		@number1 = rand(1..20)
		@number2 = rand(1..20)
		@question = "what does #{number1} plus #{number2} equal?"
	end

	def sum
		sum = @number1 + @number2
	end
end

