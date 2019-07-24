# References

`=` does not **mutate** (modify) an object; it merely reassigns the variable so that it now refers to a new object.

## The []= and accessor methods

```
my_hash = {}
# add a key & value to the hash
my_hash[:key] = :value
```

How does this work? Notice that we aren't just assigning to a variable; we're asking to mutate `my_hash` so that `:key` will refer to `:value` now. To do this, Ruby calls the `[]=` method on the hash. Here's how it might be defined:

```
class Hash
  def []=(key, val)
    # code to set key so that it maps to value...
  end
end
```

Conveniences like this (the ability to write `hash[:key] = :value` instead of `hash.[]=(:key, :value)`) are called *syntactic sugar*. They don't change the fundamental way the language works; they are merely shortcuts to make things a little easier on us.

## `+=` and `!=`

```
x += y # => x = x + y, will work as long as `#+` is defined
x != y # => !(x == y), will use the `#==` method
```

So while `[]=` was a method, `+=` and `!=` are pure syntactic sugar. Ruby will translate them into code that calls `+` and `==` respectively.

## The or trick

The Ruby `||` operation does something called short circuiting:

```
true || this_code_is_not_run
false || this_code_will_be_run
```

won't evaluate the right side if the left side of `||` is already true.

There's an "or trick" that uses `||=`:

```
class MemoizedFibonacci
  def initialize
    @values = {}
  end

  def fib(n)
    @values[n] ||= calculate_fib(n)
    # expands to:
    #     @values[n] = @values[n] || calculate_fib(n)
    # if @values[n] is nil (not previously computed), will call
    # `calculate_fib` and store the result for later reference.
  end

  private
  def calculate_fib(n)
    case n
    when 0
      0
    when 1
      1
    else
      fib(n - 1) + fib(n - 2)
    end
  end
end
```