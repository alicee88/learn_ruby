def translate phrase
    words = phrase.split(' ')
    result = ""
    words.each do |word|
        first_three_letters = word.slice(0, 3)
        puts first_three_letters
        num_consonants = first_three_letters =~ /qu/
        
        if(num_consonants)
            num_consonants = first_three_letters.slice(0, num_consonants+2).length
        else
            num_consonants = first_three_letters[/\A[a-z&&[^aeiou]]*/i].length
        end

        result = result + ' ' + word.slice(num_consonants, word.length) + word.slice(0, num_consonants) + 'ay'
    end
    return result.strip
end

