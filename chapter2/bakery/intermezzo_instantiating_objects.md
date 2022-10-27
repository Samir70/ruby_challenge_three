# Intermezzo: Instantiating Objects from Classes


## Introduction

We have had a look at Classes, how to define them, what they're used for and how we can put them to use. 

In this intermezzo section, we are going to look a little deeper at classes, objects, and how to use them all with a bit more confidence. 

## Repeatable Execution

Why do we use classes in Software Development? Why do we use methods? Functions? If you've got to this stage in Ruby Foundations, you've undoubtedly had a go at making your own in the drills - but what is the point?

The entire idea of learning increasingly complex object creation, from variables to functions, to hashes, to classes; is to make our lives easier. 

And storing executable code, or information, or instructions, in these code blocks, does make our lives a lot easier because it allows us to write something once, and then repeat it as many times s we wish.

For the variable, we need only invoke it's name:

``` ruby
variable_one = 10

variable_one += 15

variable_one *= 4
variable_one /= 50

p variable_one
```
For the function we need only make the function call:

``` ruby
def greeting(name)
    p "Hello there, #{name}!"
end

greeting("Will")

greeting("Arthur")

greeting("Maggie")
```

For the class, we should instantiate it:

``` ruby
class Cake
    def initialize
        @flavour = ""
        @size = 100
    end
    def set_flavour(flavour)
        @flavour = flavour
    end
    def take_slice(slice)
        @size -= slice
        p "You have taken a #{slice} sized slice. There is #{size} percent cake remaining."
    end
end

gateau = Cake.new
gateau.set_flavour = "Double Chocolate"
gateau.take_slice(40)

```

Notice the difference between regular function calls `some_function(argument)` and instance method calls `new_obj.method_name(argument)`?

## Exercise 1

Set a timer for 10 minutes.

Your challenge is to copy the following code out into a new Ruby file, load the file in `IRB` with `> load 'bakery.rb'` and build out your bakery with instantiation, and taste as many cakes as you can!

Don't fill up on too much of one cake, or your bakery isn't going to make it!

```ruby
class Cake
    def initialize
        @flavour = ""
        @size = 100
    end
    def set_flavour(flavour)
        @flavour = flavour
    end
    def take_slice(slice)
        @size -= slice
        p "You have taken a #{slice} percent sized slice. There is #{@size} percent cake remaining."
    end
    attr_reader :flavour, :size
end

class Baker 
    def initialize
    @stomach_space_remaining = 100
    # You can only eat up to 100 sections of cake in one sitting.
    @cakes_sampled = []
    # You must sample at least 5 cakes in order to ensure quality!
    
    end
    
    def eat_cake(cake, slice)
        cake.take_slice(slice)
        if @cakes_sampled.include? cake
            "You've tried this one already!"
        else
            @cakes_sampled << cake
            @stomach_space_remaining -= slice
        end
    end

    def check_space
        p "You have eaten #{@cakes_sampled.length} cakes. You have #{@stomach_space_remaining} percent space remaining in your belly!"
        if @cakes_sampled.length > 4
            p "You have sampled more than enough cake. Time to open the shop!"       
            exit()
        elsif @stomach_space_remaining < 0
            p "You have filled up on too much cake. You pass out. The shop makes no business this day."
            exit()
        end
        @stomach_space_remaining
    end

    def cakes?
        @cakes_sampled.each {|cake| puts cake.flavour}
    end

    def choose_favourite
        puts "Which was your favourite cake?"
        cakes?()
        puts "Pick the number as it appears in the list."
        choice = gets
        choice = choice.to_i - 1
        return "#{@cakes_sampled[choice].flavour} was your favourite!"
    end
end


# Intended input/output in IRB:
#
# > cake = Cake.new
# => #<Cake:0x00000001359f5610 @flavour="", @size=100>
# > cake.set_flavour("Vanilla")
# => "Vanilla"
# > will = Baker.new
# => #<Baker:0x0000000127854c60 @stomach_space_remaining=100, @cakes_sampled=[]>
# > will.eat_cake(cake, 20)
# => "You have taken a 20 percent sized slice. There is 80 percent cake remaining."
# > will.check_space
# "You have eaten 1 cakes. You have 80 percent space remaining in your belly!"
# => 80

```

## Exercise 2

The next exercise requires you to either copy, or clone the Bakery 2.rb file.

You must load the 'bakery_2.rb' file into irb, and do your best to satisfy the orders being placed at your Cake Bakery!

You can find a link to it [here](./lib/bakery_2.rb).

** To Be Continued **


<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=chapter2%2Fbakery%2Fintermezzo_instantiating_objects.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=chapter2%2Fbakery%2Fintermezzo_instantiating_objects.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=chapter2%2Fbakery%2Fintermezzo_instantiating_objects.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=chapter2%2Fbakery%2Fintermezzo_instantiating_objects.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=chapter2%2Fbakery%2Fintermezzo_instantiating_objects.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
