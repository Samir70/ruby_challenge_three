# In these exercises, you'll define a few small classes
# The first ones will be familiar
# Do them without looking back at your previous work
# The next will be a bit more complex
# And so on...

# In some cases, you'll define classes with methods that manipulate arrays or hashes

# The requirements will be provided as follows

# Class Name
# Initialization args, if there are any
# Method Name
# Method arguments, if there are any
# Method return value
# Examples, if needed
# More methods, as needed

# Example requirements

# Greeter
# hello
# Takes one string as an arg (a name)
# Returns 'Hello, Rita', if the arg is 'Rita'

# Example solution

# > class Greeter
# >   def hello(name)
# >    return 'Hello, ' + name
# >  end
# > end

# Greeter
# hello
# Takes one string as an arg (a name)
# Returns 'Hello, Rita', if the arg is 'Rita'
# goodbye
# Takes one string as an arg (a name)
# Returns 'Goodbye, Sam', if the arg is 'Sam'
# goodnight
# Takes one string as an arg (a name)
# Returns 'Goodnight, Jo', if the arg is 'Jo'
# goodmorning
# Takes one string as an arg (a name)
# Returns 'Goodmorning, Alex', if the arg is 'Alex'
class Greeter
  def hello(name)
    return "Hello, " + name
  end

  def goodbye(name)
    return "Goodbye, " + name
  end

  def goodnight(name)
    return "Goodnight, " + name
  end

  def goodmorning(name)
    return "Goodmorning, " + name
  end
end

# Basket
# add
# takes one argument of any type
# adds it to the list of items
# items
# returns everything that has been added to the basket
class Basket
  def initialize
    @items = []
  end

  def add(item)
    @items << item
  end

  def items
    return @items
  end
end

# Basket2
# add
# takes two arguments: a string for the item and a number for the amount of that item
# adds both pieces of information to a list of items
# contents
# returns everything that has been added to the basket
# eg: after having added "carrots", 3
# contents returns [{"item" => "carrots", "amount" => 3}]
class Basket2
  def initialize
    @items = []
  end

  def add(item, amount)
    @items << { "item" => item, "amount" => amount }
  end

  def contents
    @items
  end
end

# Calculator
# add
# takes two numbers as args
# returns the total
# multiply
# takes two numbers as args
# multiplies one by the other
# returns the result
# subtract
# takes two numbers as args
# subtracts the second from the first
# returns the result
# divide
# takes two numbers as args
# divides the first by the second
# returns the result
# history
# takes no args
# returns an array containing hashes of the operation, arguments and results of all previous calculations
# eg: after multiplying 4 and 6, the history is
# [{"operation" => "multiply", "arguments" => [4, 6], "result" => 24}]
class Calculator
  def initialize
    @history = []
  end

  def add(num1, num2)
    @history << { "operation" => "add", "arguments" => [num1, num2], "result" => num1 + num2 }
    return num1 + num2
  end

  def multiply(num1, num2)
    @history << { "operation" => "multiply", "arguments" => [num1, num2], "result" => num1 * num2 }
    return num1 * num2
  end

  def subtract(num1, num2)
    @history << { "operation" => "subtract", "arguments" => [num1, num2], "result" => num1 - num2 }
    return num1 - num2
  end

  def divide(num1, num2)
    @history << { "operation" => "divide", "arguments" => [num1, num2], "result" => num1 / num2 }
    return num1 / num2
  end

  def history
    return @history
  end
end

# Cohort
# add_student
# takes one hash, representing a student, as an arg.
# E.g. {'name' => 'Jo', 'employer' => 'NASA'}
# adds the new student to the list of students
# students
# returns all the students who have been added to the cohort
# employed_by
# takes one string, the name of an employer, as an arg.
# E.g. 'NASA'
# returns only the students who work for that employer
class Cohort
  def initialize
    @students = []
  end

  def add_student(h)
    @students << h
  end

  def students
    return @students
  end

  def employed_by(emp)
    return @students.filter { |s| s["employer"] == emp }
  end
end

# Person
# is initialized with a complex hash, for example...
{
  "name" => "alex",
  "pets" => [
    { "name" => "arthur", "animal" => "cat" },
    { "name" => "judith", "animal" => "dog" },
    { "name" => "gwen", "animal" => "goldfish" },
  ],
  "addresses" => [
    { "name" => "work", "building" => "50", "street" => "Commercial Street" },
    { "name" => "home", "building" => "10", "street" => "South Street" },
  ],
}

# work_address
# takes no args
# returns the work address in a nice format
# E.g. '50 Commercial Street'
# home_address
# takes no args
# returns the home address in a nice format
# E.g. '10 South Street'
# pets
# takes no args
# returns a nice summary of the person's pets
class Person
  def initialize(h)
    @details = h
  end

  def work_address
    add = @details["addresses"].filter { |address| address["name"] == "work" }[0]
    return add["building"] + " " + add["street"]
  end

  def home_address
    add = @details["addresses"].filter { |address| address["name"] == "home" }[0]
    return add["building"] + " " + add["street"]
  end

  def pets
    out = "#{@details["name"]} has #{@details["pets"].length} pets\n"
    @details["pets"].each { |pet| out += "- a #{pet["animal"]} called #{pet["name"]}\n" }
    return out
  end
end

# E.g.
# Alex has 3 pets
# - a cat called Arthur
# - a dog called Judith
# - a goldfish called Gwen
#
