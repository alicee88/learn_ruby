#write your code here
def echo phrase
    return phrase
end

def shout phrase
    return phrase.upcase
end

def repeat phrase, num_times = 2
    str = ""
    (1..num_times).each { str = phrase + ' ' + str}
    return str.strip
end

def start_of_word word, index
    return word.slice(0, index)
end

def first_word phrase
    index = phrase.index(' ')
    return phrase.slice(0, index)
end

def titleize phrase
    arr = phrase.split(' ')
    arr.each_with_index do |word, i|
        if(i === 0 || !(word === 'and' || word === 'of' || word === 'over' || word === 'the')) 
            word.capitalize!
        end
    end
    return arr.join(' ')
end