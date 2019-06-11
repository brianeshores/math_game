
class Question
  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @question = @num1 + @num2
  end

  def ask_question
    puts "What is #{@num1} + #{@num2}?"
  end

  def answer
    gets.chomp.to_i
  end

  def check_answer
    @question
  end
end


