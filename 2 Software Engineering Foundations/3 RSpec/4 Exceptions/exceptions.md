# Exceptions in Ruby

**Exceptions** are what Ruby uses to deal with errors or other unexpected events. 

Here are two examples of classic exceptions or errors that will halt our execution:

```
def my_method(arg_1, arg_2)
  puts arg_1
  puts arg_2
end

my_method("a") # ArgumentError: wrong number of arguments (given 1, expected 2)
```

```
5 + nil # TypeError: nil can't be coerced into Integer
```

Upon reaching an exception, the default behavior in ruby is to terminate the program. However, we can also define our own behavior to handle exceptions.

## Handling Exceptions

```
num = 0

10 / num # ZeroDivisionError: divided by 0

puts "finished"
```

We'll need to use a new structure that is specific to handling exceptions, `begin...rescue`.

```
num = 0

begin
  puts "dividing 10 by #{num}"
  ans = 10 / num
  puts "the answer is #{ans}"
rescue
  puts "There was an error with that division."
end

puts "--------"
puts "finished"
```

The output of the above code is:

```
dividing 10 by 0
There was an error with that division.
--------
finished
```

The behavior of `begin...rescue` is this: The code in the `begin` block will execute until an exception is reached. Once an exception is reached, the execution will immediately jump to `rescue`.

In the event that an exception is never hit in the `begin` block, then execution will never go to `rescue`. 

`begin...rescue` has a somewhat similar control flow to an `if...else` in that both structures have branching logic. 

other errors can be rescued too. Here are a few more common error types that are native to ruby:

* `ArgumentError`
* `NameError`
* `NoMethodError`
* `IndexError`
* `TypeError`

This is by no means an exhaustive list, but these are the common ones.

## Raising Exceptions

What if we wanted to implement our own exceptions? The point of an exception is to flag an exceptional scenario in the code that should be handled in a specific way.

The current exception message is also uncomfortable because it exposes the inner implementation details of our format_name method. For someone that is calling our method, maybe we don't want them to know what operations we do inside. If they have intelligence of the inner workings of our method, they could use that knowledge to deduce how to break our code.

Since we want to **raise** an exception when the arguments are not strings, we'll need a quick aside on how to check data type:

```
"hello".instance_of?(String)  # => true
42.instance_of?(String)       # => false
```

```
def format_name(first, last)
  if !(first.instance_of?(String) && last.instance_of?(String))
    raise "arguments must be strings"
  end

  first.capitalize + " " + last.capitalize
end

format_name("grace", "hopper") # => "Grace Hopper"
format_name(42, true)          # => RuntimeError: arguments must be strings
```

In the code above we see `raise`, this is how we can make exceptions manually. 

## Bring it all together

Since our `format_name` method can raise an exception, we can also handle it with `begin...rescue`.

```
def format_name(first, last)
  if !(first.instance_of?(String) && last.instance_of?(String))
    raise "arguments must be strings"
  end

  first.capitalize + " " + last.capitalize
end

first_name = 42
last_name = true
begin
  puts format_name(first_name, last_name)
rescue
  # do stuff to rescue the "arguments must be strings" exception...
  puts "there was an exception :("
end
```

***An important distinction to note is that `raise` is how we bring up an exception, whereas `begin...rescue` is how we react to that exception.***

