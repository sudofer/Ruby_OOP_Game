
class Game
  attr_accessor :current_player, :game_over
  
  def initialize
    @game_over = false
    @players = []
    @players[0] = Player.new('P1')
    @players[1] = Player.new('P2')
    @turn = 0
  end

  def start
    while !@game_over do
      player = @players[@turn % 2]
      other_player = @players[(@turn+1) % 2]
      new_question = Question.new(player.name)
      new_question.ask
      answer = gets.chomp.to_i
      if new_question.validate(answer)
        puts "Correct!"
      else
        player.lose_score 
        puts "Sorry! No..."
        if player.score == 0 
          puts "#{other_player.name} wins with a score of #{other_player.score}/3"
          @game_over = true
          break
        end 
        end
        puts "P1:#{@players[0].score}/3 vs P2: #{@players[1].score}/3"
        @turn = @turn + 1
    end 
  end
end

