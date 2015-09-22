class Temperature
  # TODO: your code goes here!
  
  def initialize(cf_temp = {})
      @c_or_f = cf_temp.keys[0].to_sym
      @temp = cf_temp[@c_or_f]
  end
  
  def in_fahrenheit(f_temp = @temp)
      return @temp if @c_or_f == :f
      ctof
  end
  
  def in_celsius(c_temp = @temp)
      return @temp if @c_or_f == :c
      ftoc
  end
  
  def ctof
      @temp * (9.0/5.0) + 32
  end
  
  def ftoc
      (@temp - 32) * (5.0/9.0)
  end
  
  def self.from_celsius(c_temp)
      Temperature.new(:c => c_temp)
  end
  
  def self.from_fahrenheit(f_temp)
      Temperature.new(:f => f_temp)
  end
end

class Celsius < Temperature
    
    def initialize(temp)
        super({:c => temp})
    end
    
end

class Fahrenheit < Temperature
    def initialize(temp)
        super({:f => temp})
    end
end
