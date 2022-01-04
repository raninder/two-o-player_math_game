require "./ques"
require "./player"

#  This game requires two players

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

# displays scores of both players
def disp_score(p1,p2)
		puts "#{p1.shortname}: #{p1.score}/3 vs #{p2.shortname}: #{p2.score}/3"
end

# count denotes turn of which player
count=1
while p1.score>0 && p2.score>0 do
	if(count%2 == 0)
		display_ques(p2,p1)
		disp_score(p1,p2)
	else 
		display_ques(p1,p2)
		disp_score(p1,p2)
	end
	count+=1
end

# winning player
if p1.score == 0
	puts "#{p2.name} wins  with a score of #{p2.score}/3 \n----- GAME OVER -----\nGood Bye"
elsif p2.score == 0
	puts "#{p1.name} wins  with a score of #{p1.score}/3 \n----- GAME OVER -----\nGood Bye"
end