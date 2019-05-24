# Syntactic Sugar

The broad name for code or syntax that is a "shortcut" for other code is "Syntactic Sugar". For example, `attr_reader` is syntactic sugar for defining a full getter method! We use syntactic sugar to sweeten up our code, making it more readable.

## Implementing "operator" Methods

```
class Person
  attr_reader :first_name, :last_name

  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name = last_name
    @age = age
  end

  def ==(other_person)
    self.last_name == other_person.last_name
  end
end

person_1 = Person.new("Jane", "Doe", 20)
person_2 = Person.new("John", "Doe", 18)
person_3 = Person.new("John", "Wayne", 18)

# Calling Person#== without any syntactic sugar is awkward:
p person_1.==(person_2)     # true

# With syntactic sugar, it's much more elegant:
p person_1 == person_2      # true
p person_2 == person_3      # false
```

## Implementing #

Let's explore how to implement a custom `#[]` method on our classes. We often use this method to index an `Array` or key a `Hash`.

Say we wanted to have a `Queue#[]` method to return the element at the given position in the `@line`. Like we explored in our abstraction and encapsulation lesson, we want to avoid giving direct access to the `@line` array.

```
class Queue
  def initialize
    @line = []
  end

  def [](position)
    @line[position]
  end

  def add(ele)
    @line << ele # add ele to back of line
    nil
  end

  def remove
    @line.shift  # remove front ele of line
  end
end

grocery_checkout = Queue.new
grocery_checkout.add("Alan")
grocery_checkout.add("Alonzo")

# Calling Queue#[] without any syntactic sugar is ugly:
grocery_checkout.[](0)          # "Alan"
grocery_checkout.[](1)          # "Alonzo"

# With syntactic sugar, it's waaaaay better:
grocery_checkout[0]             # "Alan"
grocery_checkout[1]             # "Alonzo"
```

## Implementing #[]=

```
class Queue
  def initialize
    @line = []
  end

  def [](position)
    @line[position]
  end

  def []=(position, ele)
    @line[position] = ele
  end

  def add(ele)
    @line << ele # add ele to back of line
    nil
  end

  def remove
    @line.shift  # remove front ele of line
  end
end

grocery_checkout = Queue.new
grocery_checkout.add("Alan")
grocery_checkout.add("Alonzo")

# Let's call Queue#[]= without syntactic sugar:
grocery_checkout.[]=(0, "Grace")
p grocery_checkout    #<Queue:0x007fe7a7a29ec8 @line=["Grace", "Alonzo"]>

# Let's call Queue#[]= again, but with syntactic sugar:
grocery_checkout[1] = "Grace"
p grocery_checkout    #<Queue:0x007fe7a7a29ec8 @line=["Grace", "Grace"]>
```

