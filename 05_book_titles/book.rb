class Book
# write your code here
    attr_writer :title

    def title
        @title.split(' ').each.with_index do |word, index|
            if (! word.match(/^(and|the|of|in|a|an)$/)) || index === 0
                word.capitalize!
            end
        end.join(' ')

    end
end
