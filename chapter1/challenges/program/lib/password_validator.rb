# def valid?(password)
#     # Below was refactored into the final line
#     # Valid passowords are
#     # # - 8 or more characters
#     # if password.length < 8
#     #     return false
#     # end
#     # # - include at least one of these characters: !, @, $, %, &
#     # if password.count('!@$%&') == 0
#     #     return false
#     # end
#     return password.length > 7 && password.count('!@$%&') > 0
# end

# After review
def long_enough(s)
  # 8 or more characters
  return s.length > 7
end
def has_special_char(s)
  # include at least one of these characters: !, @, $, %, &
  s.count('!@$%&') > 0
end

def valid?(password)
  return long_enough(password) && has_special_char(password)
end