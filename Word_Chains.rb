require_relative "./Dictionary.rb"

class WordChainer 

    def initialize(current_word)
        @word_base = Dictionary.new.dict
        @current_word = current_word
    end 

    def adjacent_words
        adjacents = []
        count = 0
        @word_base.each do |word|
            word.each_char.with_index do |char, idx|
                if char != @current_word[idx] 
                    count += 1 
                end
            end
            adjacents << word if count < 2 && word.length == @current_word.length  
            count = 0 
        end
        return adjacents 
    end
end

p WordChainer.new("cat").adjacent_words