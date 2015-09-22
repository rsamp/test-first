class Array
    
    def sum
        return 0 if empty?
        sum = 0
        self.each { |element| sum += element }
        return sum
    end
    
    def square
        return self if empty?
        return self.map { |element| element = element * element }
    end
    
    def square!
        return self.map! { |element| element = element * element }
    end
    
end