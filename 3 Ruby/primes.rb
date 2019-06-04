# primes.rb

def prime?(num)
  (2...num).each do |idx|
    if num % idx == 0
      return false
    end
	end

	true
end

def primes(num_primes)
  ps = []
  num = 1
  while ps.count < num_primes
		ps << num if prime?(num)
		
		num += 1
  end

  ps
end

if __FILE__ == $PROGRAM_NAME
  puts primes(100)
end

# If we want more detail about just how we came to this line of code, we can type wtf to look at the stack trace. (You can also add question marks and exclamation points to get longer stack traces, like wtf?, wtf?!!, etc.)

