class PigLatinizer 
    
    def piglatinize(string)
        words = string.split(" ")
        converted_words = words.collect do |word|
            if starts_with_vowel?(word)
                word << "way"
            else
                word.split(/([aeiou].*)/).reverse.join("") << "ay"
            end
        end
        converted_words.join(" ")
    end

    def starts_with_vowel?(word)
        word[0].downcase.match(/[aeiou]/) ? true : false
    end
end