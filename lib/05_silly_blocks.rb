def reverser
    new_str_arr = []
    words = yield.split
    words.each do |word|
        new_word_arr = []
        word_arr = word.split("") #result: array of characters
        word_arr.each { |char| new_word_arr.unshift(char) } #result: new array for word with characters in reversed order
        new_str_arr.push(new_word_arr.join)
    end
    new_str_arr.join(" ")
end

def adder(num = 1)
    yield + num
end

def repeater(num = 1)
    num.times do 
        yield
    end
end

