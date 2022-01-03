require "./ques"
require "./player"


p1 = Players.new("Player1", "P1")
# p2 = Players.new

def display_ques(player)
	puts "----- NEW TURN -----"
	ques1 = Question.new
	puts "#{player.name}:#{ques1.put_question}"
	answer = ques1.sum
	player_answer = gets().chomp.to_i
	if  answer == player_answer
		puts "#{player.name}:YES! You are correct"
		puts "#{player.shortname}: #{player.win_score}"
	elsif
		puts "#{player.name}: Seriously? No!"
	end
	
end

display_ques(p1)

