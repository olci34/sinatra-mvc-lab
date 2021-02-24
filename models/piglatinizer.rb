class PigLatinizer

    def piglatinize(sentence)
        vowels = ["a","e","i","o","u","A","E","I","O","U"]
        piglatinized_word = ""
        piglatinized_words = [] 
        sentence.split(" ").map do |word|
            word_letters = word.split("")
            if vowels.include?(word_letters.first)
                piglatinized_word = word + "way"
            else
                first_vowel = word_letters.find {|l| vowels.include?(l)}
                first_vowel_index = word_letters.find_index(first_vowel)
                piglatinized_word = word_letters.slice(first_vowel_index, word_letters.count).join + word_letters.slice(0, first_vowel_index).join + "ay"
            end
            piglatinized_words << piglatinized_word
        end
        piglatinized_words.join(" ")
    end

end