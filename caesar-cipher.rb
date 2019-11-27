def caesar_cipher(string = "This is my test", key = 1)
    result = ' '
    string.each_char{|i|
    if i.ord >= 'A'.ord and i.ord <= 'Z'.ord
        number  = (('A'.ord - i.ord).abs  + key)  % 26 + 'A'.ord
        result += number.chr
    elsif i.ord >= 'a'.ord and i.ord <= 'z'.ord
        number  = (('a'.ord - i.ord).abs  + key)  % 26 + 'a'.ord
        result += number.chr
    else
        result += i
    end}
    result
end

puts caesar_cipher()
puts caesar_cipher("What a string!",5)