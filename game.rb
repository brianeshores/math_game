require("./question")
require("./player")

class Game
	def initialize
		@current_player = 0
		@player1 = Player.new
		@player2 = Player.new
	end

	def play_game
		if @current_player == 0
			player1_turn
		else
			player2_turn
		end
	end

	def player1_turn
		puts "Player 1 new Turn"
		q = Question.new
		q.ask_question
		a = q.answer
		if q.check_answer == a
			puts "You got it right!"
		else
			puts "Uh oh. You blew it." 
			@player1.score -= 1
			puts "Player 1 score = #{@player1.score}/3"
		end
			check_score(@player1.score, @current_player)
	end

	
	def player2_turn
		puts "Player 2 New Turn"
		q = Question.new
		q.ask_question
		a = q.answer
		if q.check_answer == a
			puts "You got it right!"
		else
			puts "Uh oh. You blew it." 
			@player2.score -= 1
			puts "Player 2 score = #{@player2.score}/3"
		end
			check_score(@player2.score, @current_player)
	end

	
	def check_score(score, current_player)
		if score > 0 && current_player == 0
			@current_player = 1
			play_game
		elsif score > 0 && current_player == 1
			@current_player = 0
			play_game
		else
			puts("Game Over!")
		end
	end
end


