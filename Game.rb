require './Question'
require './Player'

class Game
  def initialize(players)
    @players = players
    @curr = 0
  end

  def start
    puts "New game"
    turn
  end

  def win(player)
    puts "#{player.name} wins with the score of #{player.lives}/3"
    puts '---------GAME-OVER--------'
    puts 'Good bye!'
    exit(0)
  end

  def turn
    #players = [player1, player2 ....]
    # turn = (turn + 1) % players.length
    # 0 -> (0 + 1) % 
    while !@players[@curr].is_dead do
     
      newQuestion = Question.new
      newQuestion.print_question(@players[@curr])
      print '> '
      @userchoice = $stdin.gets.chomp
      if newQuestion.answer
        # if question is wrong than player.minus_life
        # display message "wrong"
        # display the scor
      @curr = (@curr + 1) % @players.length

    end

    win(@players[@curr])

      # DISPLAY message #{player} wubs with score of 1/3 
      # DISPLAY GAME OVER
    

    # @players[0]
  end

end