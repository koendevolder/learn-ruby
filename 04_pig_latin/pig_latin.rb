#write your code here
def translate(text)
    def translate_word(word)
        if word.include? 'qu'
            word = word.split('')
            i = 0
            while i < word.length
                if word[i..i+1].join('') == 'qu'
                    word[i] = word[i..i+1].join('')
                    word.delete_at(i+1)
                end
            i += 1
            end
        else
            word = word.split('')
        end
        
        vowels = ['a', 'e', 'o', 'u', 'i']
        if vowels.include? word[0]
            return word << 'ay'
        elsif vowels.include? word[1]
            return word[1..word.length] << word[0] << 'ay'
        elsif vowels.include? word[2]
            return word[2..word.length] << word[0..1] << 'ay'
        else
            return word[3..word.length] << word[0..2] << 'ay'
        end
    end

    return text.split(' ').map! { |word| translate_word(word).join('') }.join(' ')
end

=begin
def translate(s)
  vowels = ['a','e','i','o','u','y']
  s.split.map do |word|
    i = 0
    while not vowel? word[i,1]
      if ( word[i,2] == 'qu')
        i += 2
      else
        i += 1
      end
    end
    word[i..-1] + word[0,i] + 'ay'
  end.join(' ')
end

def vowel? c
  vowels.include? c
end
=end