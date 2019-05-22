# User Input

## Getting Input

The built in method we'll use to allow a user to give input is `gets`. The `gets` method is unique in that when it is called, it will halt execution of the code and allow the user to type characters until they press enter on their keyboard. Once enter is hit, the `gets` method will return a string containing the user's keystrokes.

```
p "Enter your name:"
name = gets
p "hello " + name
```

## Dealing with New Lines

hen using `gets`, the string returned represents the keys typed by the user. However, since the user presses enter to end their input, this will add a newline character at the end of the string. `\n` is how we represent the newline character in programming. You'll notice that every string returned from `gets` will end in `\n` as a result of this.

```
puts "Enter 'yes' or 'no'"

response = gets

if response == "yes"
  puts "yup!"
elsif response == "no"
  puts "nah!"
else
  puts "I'm sorry, my responses are limited."
end
```

### Chomping New Lines

To fix the issue in the previous code, we can use a string method, `chomp` to remove all newline chars (`\n`) at the end of a string by returning a new string. Note that `chomp` is just a plain string method:

```
my_string = "yes\n"
p my_string       # "yes\n"

p my_string.chomp # "yes"
```

```
puts "Enter 'yes' or 'no'"

response = gets.chomp

if response == "yes"
  puts "yup!"
elsif response == "no"
  puts "nah!"
else
  puts "I'm sorry, my responses are limited."
end
```

## Getting Numbers

Another common mistake happens when we try to get number input from the user.

faulty code:
```
puts "Enter a number: "
num = gets.chomp
puts 2 * num      #TypeError: String can't be coerced into Integer
```

### Converting Strings to Numbers

To fix the previous error we'll use the to_i on strings. This method will convert a string to an integer:

```
numeric_string = "42"
p numeric_string      # "42"
p numeric_string.to_i # 42
```

```
puts "Enter a number: "
num = gets.chomp.to_i
puts 2 * num
```


