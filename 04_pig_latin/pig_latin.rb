def translate phrase
    words = phrase.split(' ')
    result = ""

    words.each do |word|
        first_three_letters = word.slice(0, 3)
        
        # Check for capitalised words
        is_capital = false
        if(word[0] === word[0].upcase)
            word[0].downcase!
            is_capital = true
        end

        # Check for punctuation
        punc = nil
        if(word[word.length-1].match(/[!,.?]/))
            punc = word[word.length-1]
            word = word.slice(0, word.length - 1)
        end

        num_consonants = first_three_letters =~ /qu/
        
        if(num_consonants)
            # Check for 'qu' - this might be Qu or Squ
            num_consonants = first_three_letters.slice(0, num_consonants+2).length
        else
            # Count the number of consecutive consonants
            num_consonants = first_three_letters[/\A[a-z&&[^aeiou]]*/i].length
        end

        pig_latin_word = word.slice(num_consonants, word.length) + word.slice(0, num_consonants) + 'ay'

        if(is_capital)
            pig_latin_word.capitalize!
        end

        if(punc)
            pig_latin_word = pig_latin_word + punc
        end

        result = result + ' ' + pig_latin_word
    end
    return result.strip
end

