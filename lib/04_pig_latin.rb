def translate(str)
    str_arr = str.split
    translated_string_arr = []
    vowels = ["a", "e", "i", "o", "u"]
    str_arr.each do |word|
        if(vowels.include?(word[0]))
            translated_string_arr.push(word + "ay")
        else
            i = 0
            num_consonants = 0
            while i < word.length && (!vowels.include?(word[i]) || (word[i] == "u" && word[i-1] == "q"))
                num_consonants+=1
                i+=1
            end
            first_letters = word[0, num_consonants]
            translated_string_arr.push(word[num_consonants,word.length] + first_letters + "ay")
        end
    end
    return translated_string_arr.join(" ")
end