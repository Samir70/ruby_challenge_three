# These exercises will initially recap basic hash and array methods
# Then they'll go a bit deeper on both topics
# Some exercises will require your knowledge of both arrays and hashes

# Arrays I

# fourth_element
# takes one array as an arg
# returns the fourth element
def fourth_element(arr)
    return arr[3]
end

# average
# takes an array of numbers
# returns the average (the mean)
def average(arr)
    return arr.sum / arr.length
end

# lowest_squared
# takes an array of numbers
# returns the lowest number squared
def lowest_squared(arr)
    m = arr.min
    return m*m
end

# highest_squared
# takes an array of numbers
# returns the highest number squared
def highest_squared(arr)
    m = arr.max
    return m*m
end

# Hashes I

# values_summed
# takes a hash where the values are numbers
# returns the total of all the values
def values_summed(h)
    return h.values.sum
end

# first_two_keys
# takes a hash
# returns the first two keys
def first_two_keys(h)
    return h.keys[0..1]
end

# first_two_values
# takes a hash
# returns the first two values
def first_two_values(h)
    return h.values[0..1]
end

# Arrays II

# starts_with_a
# takes one array as an arg
# returns only elements starting with 'a'
def starts_with_a(arr)
    return arr.filter { |el| el.to_s.start_with?('a') }
end

# starts_with_a_vowel
# takes an array as an arg
# returns only the elements that start with a vowel
def starts_with_a_vowel(arr)
    return arr.filter { |el| el.to_s[0].count('aeiou') > 0 }
end

# reverse_each_element
# takes an array as an arg
# reverses each element
# E.g. when the arg is ['one', 'two']
# it returns ['eno', 'owt']
def reverse_each_element(arr)
    return arr.map { |el| el.to_s.reverse }
end

# sort_by_last_letter
# takes one array as an arg
# returns the array, sorted by the last letter
def sort_by_last_letter(arr)
    return arr.sort_by { |el| el[el.length - 1] }
end

# greater_than_5
# takes one array as an arg
# returns only numbers greater than 5
def greater_than_5(arr)
    return arr.filter { |el| el > 5 }
end

# greater_than
# takes one array and one number as args
# returns only the elements that are greater than the number provided
def greater_than(arr, n)
    return arr.filter { |el| el > n }
end

# less_than
# takes one array and one number as args
# returns only the elements that are less than the number provided
def less_than(arr, n)
    return arr.filter { |el| el < n }
end

# words_shorter_than
# takes one array and one number as args
# returns only the elements than have fewer characters than the number provided
def words_shorter_than(arr, n)
    return arr.filter { |el| el.length < n }
end

# all_above?
# takes an array and a number as args
# returns true if all elements are greater than the number provided
def all_above?(arr, n)
    return arr.all? { |el| el > n }
end

# all_below?
# takes an array and a number as args
# returns true if all elements are less than the number provided
def all_below?(arr, n)
    return arr.all? { |el| el < n }
end

# multiply_each_by
# takes one array and one number as args
# returns a new array with each element multiplied by the number provided
def multiply_each_by(arr, n)
    return arr.map { |el| el*n  }
end

# Hashes II

# where_value_below
# takes a hash and a number as args
# returns key value pairs where the value is less than the number provided
def where_value_below(h, n)
    return h.filter { |k, v| v < n }
end

# where_key_starts_with
# takes a hash and a letter as args
# returns key value pairs where the key starts with the letter provided
def where_key_starts_with(h, c)
    return h.filter { |k, v| k.start_with?(c) }
end

# add_key_value_pair
# takes a hash, a key and a value as args
# returns a the hash with the new key and value added
def add_key_value_pair(h, k, v)
    h[k] = v
    return h
end

# sort_by_key
# takes a hash
# sorts key-value pairs by key
def sort_by_key(h)
    h.sort_by { |k, v| k }
    return h
end

# sort_by_value
# takes a hash
# sorts key-value pairs by value
def sort_by_value(h)
    h.sort_by { |k, v| v }
    return h
end
