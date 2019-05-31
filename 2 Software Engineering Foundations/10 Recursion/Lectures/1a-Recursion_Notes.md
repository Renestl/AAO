# Introduction to Recursion

# What is Recursion?

In programming, [Recursion](https://en.wikipedia.org/wiki/Recursion) is when a method calls itself.

# Anatomy of a Recursive Method

In recursive methods, we need to implement a way to stop the recursive loop and prevent it from looping forever.

using an if statement that prevents another recursive call. In general, we call such a statement the base case

A recursive method consists of two fundamental parts:

* the **base case** where we halt the recursion by not making a further call
* the **recursive step** where we continue the recursion by making another subsequent call
```
def count_down(num) 
    # base case
    if num === 0
        p "Houston, we have lift-off!"
        return;
    end

    p num
    # recursive step
    count_down(num - 1)
end
```

