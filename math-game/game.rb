class Game

  attr_accessor :number1, :number2, :operator_index, :operators

  def initialize
    @number1 = rand(1...20)
    @number2 = rand(1...20)
    @operator_index = rand(2)
    @operators = ["*", "+", "-"]
  end

  def new_question
    puts "What is #{number1} #{operators[operator_index]} #{number2}?"
  end

  def result
    $stdin.gets.chomp.to_i == (eval"#{number1}#{operators[operator_index]}#{number2}").to_i
  end
end