

require './Question'
require './Player'

class Game
  def initialize(players)
    @players = players
    @current_player = 0
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

  def show_stats
    puts "P1: #{@players[0].lives}/3 vs P2: #{@players[1].lives}/3"
  end

    def turn
      while !@players[@current_player].is_dead do
        newQuestion = Question.new
        newQuestion.print_question(@players[@current_player].name)
        print '> '
        @user_choice = $stdin.gets.chomp
        if newQuestion.check_answer(@user_choice.to_i)
          puts 'Yes! You are correct.'
          show_stats
        else
          puts 'Seriously? No!'
          @players[@current_player].minus_life
          if @players[@current_player].is_dead
            @current_player = (@current_player + 1) % @players.length
            win(@players[@current_player])
            
          end
          puts '---------NEW TURN--------'
        show_stats
      end
      @current_player = (@current_player + 1) % @players.length
    end
    

  end

end