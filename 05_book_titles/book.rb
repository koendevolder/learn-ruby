class Book
    #getter
    #alternative: attr_reader :title
    def title
        @title
    end
    
    #setter
    #alternative: attr_writer :title
    def title=(new_title)
        new_title.capitalize!
        arr = ['over', 'the', 'and', 'in', 'of', 'a', 'an']
        @title = new_title.split(' ').map! { |word| arr.include?(word) ? word : word.capitalize }.join(' ')
    end
    
    #alternative: attr_accessor :title (= attr_reader + attr_writer)
end
