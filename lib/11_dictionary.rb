class Dictionary
  # TODO: your code goes here!
    def initialize
        @d = {}
    end
    
    def entries
        @d
    end
    
    def add(entry)
        if (entry.class == Hash)
            @d.merge!(entry)
        else
            @d[entry] = nil
        end
    end
    
    def keywords
        @d.keys.sort
    end
    
    def include?(word)
        @d.include?(word)
    end
    
    def find(word)
        prefix_matches = {}
        @d.each_key { |entry| prefix_matches[entry] = @d[entry] if entry.start_with?(word) }
        prefix_matches
    end
    
    def printable
        output = ""
        keywords.each { |key| output+="[#{key}] \"#{@d[key]}\"\n" }
        output.chomp
    end
end
