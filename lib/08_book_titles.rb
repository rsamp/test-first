class Book
  # TODO: your code goes here!
  
  attr_reader :title
  
  def title=(new_title)
      @title = new_title
      little_words = ["and", "the", "over", "in", "of", "a", "an"]
      title_arr = @title.split
      title_arr.each_with_index do |word, i|
          if (i == 0 || !little_words.include?(word))
              word.capitalize!
          end
      end
      @title = title_arr.join(" ")
      @title
  end
end
