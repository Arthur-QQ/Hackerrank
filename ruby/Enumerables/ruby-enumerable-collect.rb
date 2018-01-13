
def rot13(secret_messages)
    def mini_rot(character)
        if 'a'.ord <= character.ord && 'z'.ord >= character.ord
            o = character.ord - 97
            o += 13
            o %= 26
            return (o+97).chr
        elsif 'A'.ord <= character.ord && 'Z'.ord >= character.ord
            o = character.ord - 65
            o += 13
            o %= 26
            return (o + 65).chr
        else
            return character
        end
    end
    def big_rot(message)
        return (message.split('').map {|c| mini_rot(c)}).join('')
    end
    return secret_messages.map {|s| big_rot(s)}
end
