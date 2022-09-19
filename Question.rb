class Question
  attr_reader :sum, :num1, :num2

  def initialize
    @sum = 0
    @num1 = rand(1..20)
    @num2 = rand(1..20) 
  end
  
  def print_question(player) 
    puts "#{player} What does #{@num1} + #{@num2} equal?"
  end

  def answer
    @sum = @number1 + @number2
  end
  
end