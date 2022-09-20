# Generates two random numbers between 1 and 20 to sum 

class Question
  # initialize class with sum = 0
  attr_reader :sum, :number1, :number2
  def initialize 
    @number1 = rand(1..20)
    @number2 = rand(1..20)
    @sum = @number1 + @number2
  end
  
  # generate two random numbers between 1-20 and add them together
  def print_question(player_name)
    puts "#{player_name}: What does #{@number1} + #{@number2} equal?"
  end
  
  def check_answer(input)
    @sum == input
  end
end