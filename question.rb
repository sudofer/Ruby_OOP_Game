class Question
  attr_reader :answer

  def initialize(player_name)
    @player_name = player_name
    @val1 = rand(1...20)
    @val2 = rand(1...20)
    @answer = @val1.to_i + @val2.to_i
  end

  def ask
    puts "#{@player_name}: what does #{@val1} + #{@val2} equal?"
  end

  def validate(answer)
    @answer == answer
  end

end