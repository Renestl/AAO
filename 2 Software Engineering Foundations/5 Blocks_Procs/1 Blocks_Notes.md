# Blocks

A block is a chunk of code that is passed into a method to be executed.

## Block Basics

There are two ways to pass a block into a method.

We can use `{...}` brace syntax for blocks that only contain a single line of code:

```
[1,2,3].map { |num| -(num * 2) } # => [-2, -4, -6]
```

Or, we can use `do...end` syntax for multiline blocks:

```
[1,2,3].map do |num|
  doubled = num * 2
  -doubled
end     # => [-2, -4, -6]
```

Brace `{...}` blocks and `do...end` blocks are functionally equivalent, we just prefer `do...end` for blocks that contain many lines.

Blocks can accept parameters if we name them between pipes (`|param_1, param_2, etc.|`).

However, an important distinction to make is that the return keyword pertains to methods, not blocks.

```
# Correct:
def double_eles(arr)
  arr.map do |ele|
    ele * 2
  end
end
double_eles([1,2,3]) #=> [2,4,6]


# Incorrect:
def double_eles(arr)
  arr.map do |ele|
    return ele * 2
  end
end
double_eles([1,2,3]) #=> 2
```

## Using Methods as Blocks

It is very, very common to have blocks that take an argument and call a single method. For example:

```
["a", "b", "c"].map { |str| str.upcase }  #=> ["A", "B", "C"]
[1, 2, 5].select { |num| num.odd? }       #=> [1, 5]
```

Ruby allows us to use cleaner syntax when we have simple blocks that follow the above pattern. Let's refactor the above example to use this shortcut:

```
["a", "b", "c"].map(&:upcase) #=> ["A", "B", "C"]
[1, 2, 5].select(&:odd?)      #=> [1, 5]
```

We call `map` and pass in a single argument, `&:upcase`. `:upcase` is a symbol referring to the String#upcase method. We use `&` to convert this "method" into an object that we can pass into `map`. In Ruby, we cannot directly pass a method into another method, so we need to use the `&` operator.

