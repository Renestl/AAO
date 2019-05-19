# Class Basics

## How to Create Cats Poorly

```
cat_1 = {name: "Sennacy", color: "brown", age: 3}
cat_2 = {name: "Whiskers", color: "white", age: 5}
cat_3 = {name: "Garfield", color: "orange", age: 7}
```

By using a class we can avoid this repetition and easily create objects of the same structure.

## Creating a Cat Class

In the cat example above, we can notice a theme across all Cats we create. They all have the same keys, but may differ in their values. We can say that each Cat has the same structure. Let's DRY up the last example by creating a Class to act as a blueprint for Cats.

```
class Cat
  def initialize(name, color, age)
    @name = name
    @color = color
    @age = age
  end
end
```

A few things we'll want to note about the code above:

* to create a class we use the `class` keyword, big surprise
* the name of a class must begin with a capital letter
* we can define methods within a class

You'll notice that we defined a method named `initialize` in our class. This is a special method name that we will use when creating cats. The method expects 3 parameters, which is nothing new, but what are `@name`, `@color`, etc.? `@` is how we denote a *instance variable* or *attribute* of our class. That means that our cat's will have the attributes or properties of `@name`, `@color`, `@age`.

## Initializing New Cats

```
class Cat
  def initialize(name, color, age)
    @name = name
    @color = color
    @age = age
  end
end

cat_1 = Cat.new("Sennacy", "brown", 3)
cat_2 = Cat.new("Whiskers", "white", 5)
p cat_1 #<Cat:0x007fb6d804cfe0 @age=3, @color="brown", @name="Sennacy">
p cat_2 #<Cat:0x007fb6d6bb60b8 @age=5, @color="white", @name="Whiskers">
```

To create a Cat we must call `Cat.new`, this must mean that `new` is a method on `Cat`. This is strange because nowhere did we define a method literally named `new`. The trick is, when we call `Cat.new`, ruby will be really calling upon the `initialize` method we defined. A hint at this is the fact that the `initialize` method expects a name, color, age and when we call `Cat.new` we pass in a name, color, age.

## Getter Methods

Since we designed a Cat instance to consist of 4 attributes, it's common to also want a way to refer to the value of those attributes. To do this, we define "Getter Methods" to get (return) those attributes. Let's add a name getter to `Cat`:

```
class Cat
  def initialize(name, color, age)
    @name = name
    @color = color
    @age = age
  end

  def get_name
    @name
  end
end

cat_1 = Cat.new("Sennacy", "brown", 3)
p cat_1.get_name # "Sennacy"
```