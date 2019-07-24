# Method Decomposition & Design

## Methods should be atomic

**Each method should do one thing.** A method should do a single, atomic thing (this is sometimes called the *Single Responsibility Principle*).

"iterative stiffening"

## Do not use global state

A good general goal is that your methods should be like a mathematical function: it should take something in and return something. It should not rely on anything besides what is explicitly passed in, and it should not have side-effects; it should communicate its result through the return value.

## Don't modify arguments

Don't do this:
```
def combine_ingredients(alcohols, mixers)
  drinks = []

  alcohols.length.times do
    drinks << [alcohols.pop, mixers.pop]
  end

  drinks
end
```

Instead do something like this:
```
def combine_ingredients(alcohols, mixers)
  drinks = []

  alcohols.each_index do |i|
    drinks << [alcohols[i], mixers[i]]
  end

  drinks
end
```