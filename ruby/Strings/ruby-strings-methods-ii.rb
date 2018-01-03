# Enter your code here
def strike(string)
    return "<strike>" + string + "</strike>"
end


def mask_article(string, arr)
    arr.each do |word|
        string = string.gsub(word, strike(word))
    end
    return string
end
