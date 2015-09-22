def echo(str)
    return str
end

def shout(str)
    return str.upcase
end

def repeat(str, num = 2)
    string = str
    (num-1).times { string+=" #{str}" }
    return string
end

def start_of_word(str, num)
    return str[0, num]
end

def first_word(sentence)
    sent_arr = sentence.split
    return sent_arr[0]
end

def titleize(title)
    little_words = ["and", "the", "over"]
    title_arr = title.split
    title_arr.each_with_index do |word, i|
        if (i == 0 || !little_words.include?(word))
            word.capitalize!
        end
    end
    return title_arr.join(" ")
end