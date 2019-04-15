class Book
# write your code here
    def title
        @title
    end

    def title=(title)
        conjs_and_prepos = ["and", "in", "the", "of", "a", "an"]
        split_title = title.split
        split_title.map! {|word|
            if conjs_and_prepos.index(word) and word != split_title[0]
                word = word
            else
                word = word.capitalize
            end
        }
        split_title = split_title.join(' ')
        @title = split_title
    end
end