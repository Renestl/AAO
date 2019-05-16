# Using Byebug

Byebug lets us do many cool things. We can pause execution, step through our code one line at a time, take a look inside key variables and methods.

## Byebug Cheatsheet
* before running your file
	* `require "byebug"` - add to the top of your file to gain access to the gem
	* `debugger` - place this line at a point in your file where you want to begin debugger mode
* while in debugger mode
	* `l <start line>-<end line>` - list the line numbers in the specified range
		* example: `l 3-20`
	* `step` or `s` - step into the method call on the current line, if possible
	* `next` or `n` - move to the next line of executed code
	* `break <line num>` or `b <line num>` - place a breakpoint at the specified line number, this will pause execution again
	* `continue` or `c` - resume normal execution of the code until a breakpoint
	* `display <variable>` - automatically show the current value of a variable

## Running Byebug

```
# code.rb
1:  require "byebug"   #
2:   
3:  def is_prime?(number)
4:    (2...number).each do |factor|
5:      return false if number % factor == 0
6:    end
7:
8:    number > 1
9:  end
10:
11: def first_n_primes(num_primes)
12:   primes = []
13:   num = 2
14:   debugger        #
15:   while primes.length < num_primes
16:     primes << num if is_prime?(num)
17:     num += 1
18:   end
19:   primes
20: end
21:
```

