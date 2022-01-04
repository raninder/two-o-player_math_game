require "./ques"
require "./player"


p1 = Players.new("Player1", "P1")
p2 = Players.new("Player2", "P2")


def display_ques(player1,player2)
	puts "----- NEW TURN -----"
	ques1 = Question.new

	puts "#{player1.name}:#{ques1.question}"
	answer = ques1.sum
	puts ">"
	player_answer = gets().chomp.to_i

	if answer == player_answer
		puts "#{player1.name}:YES! You are correct"
	else
		player1.lose_score
		puts "#{player1.name}: Seriously? No!"
	end
	
end

count=1
while(count<=6)
	if p1.score == 0
		# puts "p1 wins"
		puts "#{p2.name} wins  with a score of #{p2.score}/3 \n----- GAME OVER -----\nGood Bye"
		break
	elsif p2.score == 0
		# puts "p2 wins"
		puts "#{p2.name} wins  with a score of #{p2.score}/3 \n----- GAME OVER -----\nGood Bye"
		break
	else
		puts "#{p1.shortname}: #{p1.score}/3 vs #{p2.shortname}: #{p2.score}/3"
	end
	
	if(count%2 == 0)
		display_ques(p2,p1)
	else 
		display_ques(p1,p2)
	end
	count+=1
end


