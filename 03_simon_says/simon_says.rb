#write your code here
def echo(simon_said)
    simon_said
end

def shout(simon_said)
    simon_said.upcase
end

def repeat(simon_said, times = 2)
    ((simon_said + ' ') * times).strip
end

def start_of_word(simon_said, no_of_chars = 1)
    simon_said[0, no_of_chars]
end

def first_word(simon_said)
    simon_said.split.first
end

def titleize(simon_said)
    split_word = simon_said.split
    split_word.each_with_index do |word, i|
        if(not((split_word[i] == 'and' or
            word == 'over' or
            word == 'the') and 
            split_word.index(word) > 0))
           
            split_word[i] = word.capitalize
        end
    end
    split_word.join(' ')
end