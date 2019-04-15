#write your code here
def translate(word)
    split_word = word.split

    vowels_regex = /^[aieou]/
    two_consonants = /\A[^aieou]{2}/
    three_consonants = /\A[^aieou]{3}/

    split_word.map! {|word|
        if vowels_regex.match(word)
            word << "ay"
        elsif not(vowels_regex.match(word)) and word[1] == "u"
            consonant_letter = word[0,2]
            word = word.sub(word[0,2], "")
            word << consonant_letter + "ay"
        elsif three_consonants.match(word)
            consonant_letter = word[0,3]
            word = word.sub(word[0,3], "")
            word << consonant_letter + "ay"
        elsif two_consonants.match(word)
            if word[2] == "u"
                consonant_letter = word[0,3]
                word = word.sub(word[0,3], "")
                word << consonant_letter + "ay"
            else
                consonant_letter = word[0,2]
                word = word.sub(word[0,2], "")
                word << consonant_letter + "ay" 
            end
        else
            consonant_letter = word.slice(0)
            word = word.sub(word[0], "")
            word << consonant_letter + "ay"
        end
    }

    split_word.join(" ")
end