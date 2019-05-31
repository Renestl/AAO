# # recursive method definition:
# def say_hello 
#   p "hello"
#   say_hello
# end

# say_hello # prints "hello" forever

def count_down(num) 
  if num == 0
    p "Houston, we have lift-off!"
    return;
  end

  p num
  count_down(num - 1)
end

count_down(10)  # prints numbers from 10 to 1, and finally "Houston, we have lift-off!"