class RPNCalculator
  # TODO: your code goes here!
  def initialize
      @c = []
      @value
  end
  
  def push(num)
      @c.push(num)
  end
  
  def pop
      raise StandardError.new("calculator is empty") if @c.empty?
      @c.pop
  end
  
  def plus
      num2 = pop
      num1 = pop
      @c.push(num1 + num2)
  end
  
  def minus
      num2 = pop
      num1 = pop
      @c.push(num1 - num2)
  end
  
  def divide
      num2 = pop.to_f
      num1 = pop
      @c.push(num1 / num2)
  end
  
  def times
      num2 = pop
      num1 = pop
      @c.push(num1 * num2)
  end
  
  def value
      @value = @c[-1]
  end
  
  def tokens(str)
      str_arr = str.split(" ")
      str_arr = str_arr.map do |num_or_func|
          if /\d/.match(num_or_func) #is a digit
              num_or_func.to_i
          else                       #is a function
              num_or_func.to_sym
          end
      end
      return str_arr
  end
  
  def evaluate(str)
      arr = tokens(str)
      arr.each do |num_or_func|
          if(num_or_func.class == Fixnum) #is a digit
              push(num_or_func)
          else                            #is a function
              plus if num_or_func == :+
              minus if num_or_func == :-
              divide if num_or_func == :/
              times if num_or_func == :*
          end
      end
      value
  end
  
end
