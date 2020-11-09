class Question

  attr_reader :answer

  def initialize 
    @answer = -1
  end

  def gen_question
    num = Random.new
    first_num = num.rand(100) 
    second_num = num.rand(100)  
    @answer = first_num + second_num
    "What is #{first_num} + #{second_num} equal to? "
  end

end


