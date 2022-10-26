def valid?(password)
    # Below was refactored into the final line
    # Valid passowords are
    # # - 8 or more characters
    # if password.length < 8
    #     return false
    # end
    # # - include at least one of these characters: !, @, $, %, &
    # if password.count('!@$%&') == 0
    #     return false
    # end
    return password.length > 7 && password.count('!@$%&') > 0
end