#write your code here
def translate phrase
    phoneme = ""
    result = ""
    lastLetter = ""
    makeUpper = false
    startOfWord = true
    wordArr = phrase.split(' ')
   
    wordArr.each do | word |
        letterArr = word.split('')
        startOfWord = true
        phoneme = ""
        makeUpper = false

        letterArr.each.with_index do |letter, index|
            if(letter === letter.upcase)
                letter = letter.downcase!
                makeUpper = true
            end

            if(letter.match(/[aeiou]/i) && startOfWord)
                break
            else
                startOfWord = false

                if(!letter.match(/[aeiou]/i) || (lastLetter === 'q' && letter === 'u'))
                    phoneme = phoneme + letter
                else
                    break
                end
            end
            lastLetter = letter
        end

        start = letterArr.slice(0, phoneme.length)
        remainder = letterArr.slice(phoneme.length, letterArr.length).join('') + start.join('') + 'ay'

        if(makeUpper)
            remainder = remainder.strip.capitalize
        end

        result = result +' '+remainder
        
    end

    return result.strip
   
end