# Debugging Using PRY

As you develop and debug your programs, often times you'll find it useful to test ideas in a "sandbox" environment where you can get quick feedback on the state of your code. We'll use a Ruby REPL to this end. To review, **REPL** stands for Read, Evaluate, Print, Loop.

If you haven't installed Pry already, you can run the following commands in your command line to get set up:

* `gem install pry` - this will install the main pry gem
* `gem install pry-doc` - this will allow us to view ruby documentation in Pry, a nice bonus!

## Using Pry

begin a pry session by simply using the command `pry` in your command line

### ls

We can use ls to list methods that we can use in a given context. For example let's say we wanted to know what methods we have available to use on strings by entering ls String in Pry:

```
[1] pry(main)> ls String
String.methods: try_convert
String#methods:
  %            capitalize   delete!                end_with?          ljust  
```

### show-doc

We can use `show-doc` to show a documentation summary for a given method. For example, if we want to learn more about the `end_with?` method from the example above, we can use the pry command `show-doc String#end_with?`. We'll need to follow this # notation closely as the output from `ls` suggests.

### load

This is not a Pry specific command, but you'll find it useful nonetheless when you want to bring an entire files worth of Ruby code into your Pry session. If we begin a Pry session in the same folder where we have a `.rb` file. We can load the entire file into Pry and begin playing with it.

Let's say our command line is located in my_ruby_code/ and there is a code.rb file within that we want to load into pry. Our folder structure is set up like so:

```
my_ruby_code/
└── code.rb
```

Then we can load the file into pry:

```
~/Desktop/my_ruby_code$ ls
code.rb

~/Desktop/my_ruby_code$ cat code.rb
def is_prime?(num)
  (2...num).each do |factor|
    return false if num % factor == 0
  end

  num > 1
end

~/Desktop/my_ruby_code$ pry
[1] pry(main)> load "code.rb"
=> true
[2] pry(main)> is_prime?(16)
=> false
[3] pry(main)> is_prime?(7)
=> true
[4] pry(main)>
```

### show-source

If we want to see the code that implements a method, we call this the source code, we can use the `show-source` method. 

Let's say we previously copy and pasted a definition for `is_prime?` into our Pry session, then we could view the original source using `show-source is_prime?`:

```
[5] pry(main)> show-source is_prime?

From: (pry) @ line 1:
Owner: Object
Visibility: public
Number of lines: 7

def is_prime?(num)
  (2...num).each do |factor|
    return false if num % factor == 0
  end

  num > 1
end
```

You'll find the few commands above the most useful as you code, so you should focus on this handful of commands for now. However, there is much more we can do with Pry; feel free to read about it in the [Pry GitHub](https://github.com/pry/pry/blob/master/README.md).