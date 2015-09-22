module Ones
    def ones_place(digit)
        return "" if digit == 0
        return "one" if digit == 1
        return "two" if digit == 2
        return "three" if digit == 3
        return "four" if digit == 4
        return "five" if digit == 5
        return "six" if digit == 6
        return "seven" if digit == 7
        return "eight" if digit == 8
        return "nine" if digit == 9
    end
end

module Tens
    def two_digits(digits)
        return teens(digits) if digits >= 10 && digits < 20
        return tens_place(digits)
    end
    
    def teens(digits)
        return "ten" if digits == 10
        return "eleven" if digits == 11
        return "twelve" if digits == 12
        return "thirteen" if digits == 13
        return "fourteen" if digits == 14
        return "fifteen" if digits == 15
        return "sixteen" if digits == 16
        return "seventeen" if digits == 17
        return "eighteen" if digits == 18
        return "nineteen" if digits == 19
    end
    
    def tens_place(digits)
        str = ""
        digits_arr = digits.to_s.split("")
        tens_digit = digits_arr[0].to_i
        ones_digit = digits_arr[-1].to_i
        str = "twenty" if tens_digit == 2
        str = "thirty" if tens_digit == 3
        str = "forty" if tens_digit == 4
        str = "fifty" if tens_digit == 5
        str = "sixty" if tens_digit == 6
        str = "seventy" if tens_digit == 7
        str = "eighty" if tens_digit == 8
        str = "ninety" if tens_digit == 9
        return "#{str} #{ones_place(ones_digit)}".chomp(" ")
    end
end

module Hundreds
    def three_digits(digits)
        digits_arr = digits.to_s.split("")
        hundreds_digit = digits_arr[0].to_i
        remaining_digits = digits_arr[1..digits_arr.length-1]
        return "#{ones_place(hundreds_digit) if hundreds_digit != 0} hundred #{two_digits(remaining_digits.join.to_i) if remaining_digits.join.to_i != 0}".chomp(" ")
    end
end

module Thousands
    def thousands_place(digits)
        digits_arr = digits.to_s.split("")
        thousands_digit = digits_arr[0].to_i
        remaining_digits = digits_arr[1..digits_arr.length-1]
        return "#{ones_place(thousands_digit) if thousands_digit != 0} thousand #{three_digits(remaining_digits.join.to_i) if remaining_digits.join.to_i != 0}".chomp(" ")
    end
end

class Fixnum
    include Ones
    include Tens
    include Hundreds
    include Thousands
    
    def in_words
        digit_arr = self.to_s
        #case digit_arr.length
            #when 1
            if self == 0 #did not include in module because, more often than not, we don't pronounce the zero
                return "zero"
            #    else
            #        return ones_place(self)
            #    end
            #when 2
            #    return two_digits(self)
            #when 3
            #    return three_digits(self)
            else
                if digit_arr.length < 4
                    last_three_digits = nil
                    i = -1
                    while digit_arr[i] != nil && i <= -4
                        last_three_digits_arr << digit_arr[i]
                        last_three_digits = last_three_digits_arr.join.to_i
                        puts last_three_digits
                    end
                    return thousands_place(last_three_digits)
                end
            
            #when >5 && <8
             #   first_three = self.to_s.split("")
              #  return thousands_place(self)
            end
    end


















    
=begin
    def in_words
        str_arr = []
        digit_array = self.to_s.split("").map { |digit| digit.to_i }
        i = digit_array.length - 1
        zero_in_ones = true if digit_array[-1] == 0                     #making note of zero in the ones place for later in case it's needed
        while i >= 0
            if(i == digit_array.length - 1)
                str_arr.unshift(ones_place(digit_array[i]))
            elsif(i == digit_array.length - 2)
                if(digit_array[i] == 1)                                 #will be a "-teen" number (or ten, eleven, twelve)
                    tens = digit_array[i].to_s
                    ones = digit_array[i + 1].to_s
                    digits = (tens + ones).to_i                         #number is less than 20, so forming digits together to make a "-teen" number
                    str_arr[0] = teens(digits)                          #and replacing the current ones_place result because it's no longer needed
                else
                    str_arr.shift if zero_in_ones                       #empty array if number is 20, 30, 40, etc. (avoids "twenty zero")
                    str_arr.unshift(tens_place(digit_array[i]))
                end
            elsif(i == digit_array.length - 3)
                str_arr.unshift(hundreds_place(digit_array[i]))
            end
            i-=1
        end
        return str_arr.join(" ")
    end
=end
end
