# Attribute Methods

## attr_reader

Creating getter methods for the attributes we want to expose is pretty repetitive. Let's use a new method `attr_reader`, to create the getters for `name` and `age` automatically:

```
class Dog
  # attr_reader will define #name and #age getters for us
  attr_reader :name, :age

  def initialize(name, age, favorite_food)
    @name = name
    @age = age
    @favorite_food = favorite_food
  end
end

dog = Dog.new("Fido", 3, "pizza")
dog.name
dog.age
dog.favorite_food # NoMethodError: undefined method `favorite_food', because we didn't pass it to attr_reader
```

`attr_reader` is a built in ruby method.
Note that we don't call it within `initialize`. `attr_reader` should be passed symbols that correspond to the names of the attributes we want to have getters for.

In other words, when we have this call to `attr_reader`:

```
class MyClass
  attr_reader :attribute_1
  # ...
end
```

It would result in this getter method being defined under the hood:

```
class MyClass
  # ...
  def attribute_1
    @attribute_1
  end
end
```

Don't be thrown off by the syntax we use to call `attr_reader`. By convention in Ruby, we omit the parentheses for attr methods. However, `attr_reader :name, :age` is equivalent to the explicit `attr_reader(:name, :age)`.

## attr_writer

In a similar way, we can use `attr_writer` to define setter methods:

```
class Dog
  # attr_writer will define #name= and #age= setters for us
  attr_writer :name, :age

  def initialize(name, age, favorite_food)
    @name = name
    @age = age
    @favorite_food = favorite_food
  end
end

dog = Dog.new("Fido", 3, "pizza")

dog.name = "Spot"
dog.age += 1

p dog #<Dog:0x007fd87f1144a0 @age=4, @favorite_food="pizza", @name="Spot">

dog.favorite_food = "calzone" # NoMethodError: undefined method `favorite_food=', because we did't pass it to attr_writer
```

## attr_accessor

Often times we may want to both a getter and setter for an attribute. If we are in this scenario, we can use the `attr_accessor` method. It is a combination of `attr_reader` and `attr_writer` in that it will create both getters and setters for the specified attributes.

```
class Dog
  # attr_accessor will define #name, #name=, #age, #age= methods for us
  attr_accessor :name, :age

  def initialize(name, age, favorite_food)
    @name = name
    @age = age
    @favorite_food = favorite_food
  end
end

dog = Dog.new("Fido", 3, "pizza")

# Let's use the setter and getter for name!
dog.name = "Spot"
p dog.name          # "Spot"
```

## Wrapping Up

Don't just take all your class's attributes and pass them to `attr_accessor`. Consider if a user of the class needs to manipulate that data with a raw getter or setter. Or more importantly consider if it is safe for a user to do so. Only use getters and setters for what you want to expose in your classes.