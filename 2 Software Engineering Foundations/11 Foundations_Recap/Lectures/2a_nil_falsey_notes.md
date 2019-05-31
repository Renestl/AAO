`||` and `&&` can be used on other data types as well as boolean values.

# Truthy and Falsey Values

It is the case that every value in Ruby can be treated as true (truthy) or as false (falsey). Remembering which values are truthy and which are falsey in Ruby is simple:

* `nil` and `false` are the only falsey values
* everything else is truthy

Note that these rules for truthy vs falsey are specific to Ruby. Other languages may differ in their truthy and falsey values. For example, in JavaScript, the number `0` and the empty string `""` are considered falsey as well. This is not the case in Ruby.

The implication of this is that we can use nil to act as false in scenarios that traditionally require the boolean:

```
val = nil
if val
    p "it is true"
else 
    p "it is false"
end

# The code above will print "it is false" since nil is a falsey value
```

# What does logical OR really do?

Here is a more complete description of how `a || b` behaves under the hood:

when `a` is truthy, return `a`
when `a` is falsey, return `b`

```
true || 42          # => true
42 || true          # => 42
false || 42         # => 42
42 || false         # => 42
false || "hello"    # => "hello"
nil || "hello"      # => "hello"
"hi" || "hello"     # => "hi"
0 || true           # => 0
false || nil        # => nil
```

# Default Arguments

Using the evaluation of `||` in this way is particularly useful when implementing default arguments for our methods.

Take the following code as an example:

```
def greet(person = nil)
    if person.nil?
        person = "you"
    end

    p "Hey " + person
end

greet("Brian")  # => "Hey Brian"
greet           # => "Hey you"
```

We can refactor the conditional by utilizing || and the fact that nil is a falsey value:

```
def greet(person = nil)
    person = person || "you"
    p "Hey " + person
end

greet("Brian")  # => "Hey Brian"
greet           # => "Hey you"
```

We can utilize our classic shorthand. We commonly write `a += b` in place of `a = a + b`. In the same way, we can write `a ||= b` in place of `a = a || b` :

```
def greet(person = nil)
    person ||= "you"
    p "Hey " + person
end

greet("Brian")  # => "Hey Brian"
greet           # => "Hey you"
```

# Default Procs
The `||=` pattern is utilized heavily when implementing default procs:

```
def call_that_proc(val, &prc)
    prc ||= Proc.new { |data| data.upcase + "!!" }
    prc.call(val)
end

p call_that_proc("hey")                                             # => "HEY!!"
p call_that_proc("programmers") { |data| data * 3 }                 # => "programmersprogrammersprogrammers"
p call_that_proc("code") { |data| "--" + data.capitalize + "--"}    # => "--Code--"
```

You'll notice that in the above code, we don't explicitly assign `prc` to be nil. This is because `prc` will automatically contain `nil` if the method is called without passing in a proc.

# Lazy Initialization

The `||=` pattern is also useful when implementing Lazy Initialization for classes. Lazy initialization is a design strategy where we delay creation of an object until it is needed. The idea is to avoid slow or costly operations until they are absolutely necessary. This contrasts with our typical classes that preemptively set all attributes up front.

For example, take this Restaurant class that initializes all attributes immediately:

```
class Restaurant
    attr_accessor :name, :chefs, :menu

    def initialize(name, chefs)
        @name = name
        @chefs = chefs
        @menu = ["sammies", "big ol' cookies", "bean blankies", "chicky catch", "super water"]
    end
end

five_star_restaurant = Restaurant.new("Appetizer Academy", ["Marta", "Jon", "Soon-Mi"])
p five_star_restaurant
#<Restaurant:0x00007fea7a8c6880 
# @name="Appetizer Academy", 
# @chefs=["Marta", "Jon", "Soon-Mi"],
# @menu=["sammies", "big ol' cookies", "bean blankies", "chicky catch", "super water"]
#>
```

While it is required that `@name` and `@chefs` must be assigned immediately in R`estaurant#initialize` since they are taken in as arguments, it is not necessary that `@menu` be assigned immediately. Imagine that @menu was a "costly" object like an array of 10,000 elements. Initializing @menu may slow down the creation of the `Restaurant`. To overcome this, we'll use the lazy initialization pattern to only create the `@menu` if someone asks for it. In other words, we'll create the `@menu` in the `Restaurant#menu` getter if it does not exist already:

```
class Restaurant
    attr_accessor :name, :chefs, :menu

    def initialize(name, chefs)
        @name = name
        @chefs = chefs
    end

    def menu
        @menu ||= ["sammies", "big ol' cookies", "bean blankies", "chicky catch", "super water"]
    end
end

five_star_restaurant = Restaurant.new("Appetizer Academy", ["Marta", "Jon", "Soon-Mi"])

p five_star_restaurant
#<Restaurant:0x00007f90b3922368 
# @name="Appetizer Academy",
# @chefs=["Marta", "Jon", "Soon-Mi"]
#>

p five_star_restaurant.menu
#["sammies", "big ol' cookies", "bean blankies", "chicky catch", "super water"]

p five_star_restaurant
#<Restaurant:0x00007f90b3922368
# @name="Appetizer Academy", 
# @chefs=["Marta", "Jon", "Soon-Mi"],
# @menu=["sammies", "big ol' cookies", "bean blankies", "chicky catch", "super water"]
#>
```

Above, notice how the restaurant lacks a `@menu` until we call the getter! To accomplish this we leveraged the fact that a missing attribute will be nil. That means we can use the `||=` pattern!