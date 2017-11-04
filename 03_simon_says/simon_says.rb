#write your code here
def echo(text)
    return text
end

def shout(text)
    return text.upcase
end

def repeat(text, times=2)
    str = []
    while times > 0
        str << text
        times = times - 1
    end
    return str.join(' ')
end

def start_of_word(text, cutoff)
    return text[0, cutoff]
end

def first_word(text)
    return text.split(' ')[0]
end

def titleize(text)
    #(var.method!) == (var = var.method)
    text.capitalize!
    arr = ['over', 'the', 'and']
    #"Cat Dog Bird".split(' ') => ['Cat', 'Dog', 'Bird']
    #['Cat', 'Dog', 'Bird'].join(' ') => "Cat Dog Bird"
    #['Cat', 'Dog', 'Bird'].include? 'Dog' => true
    text.split(' ').map! { |word| arr.include?(word) ? word : word.capitalize }.join(' ')
end