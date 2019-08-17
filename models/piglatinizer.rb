class PigLatinizer
    attr_accessor :word

    def piglatinize(word)
        if word.include?(" ")
            is_phrase?(word).join(" ")
        elsif self.first_letter_vowel?(word)
            word + "way"
        else
            check_consonant(word)
        end
    end

    def is_phrase?(word)
        sentence = word.split(" ")
        sentence.map {|words| piglatinize(words)}
    end

    def first_letter_vowel?(word)
        vowels = 'aeiouAEIOU'
        vowels.include?(word[0].downcase)
    end

    def check_consonant(word)
        check_word = word.split(/([a,e,i,o,u].*)/)
        check_word[1] + check_word[0] + "ay"
    end
end