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
    
    
# Rule 1: If a word begins with a vowel sound, add an "ay" sound to the end of the word.
#
# Rule 2: If a word begins with a consonant sound, move it to the end of the word, and then add an "ay" sound to the end of the word.