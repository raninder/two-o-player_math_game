class Question
	attr_accessor :number1, :number2

	def initialize
		@number1 = rand(1..20)
		@number2 = rand(1..20)
	end

	def put_question
		puts "what does #{number1} plus #{number2} equal?"
		# sum = @number1 + @number2
		# puts "answer is #{sum}"
	end

	def sum
		sum = @number1 + @number2
	end
end
#  q1 = Question.new
#  q1.put_question
