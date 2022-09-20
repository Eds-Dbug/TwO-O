class Player
  attr_accessor :lives
  attr_reader :name
  def initialize(name)
    @name = name
    @lives = 3
  end 

  def minus_life
    @lives -= 1
  end

  def is_dead
  @lives == 0
  end


end