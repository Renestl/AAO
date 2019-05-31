# Spaceship Operator <=>

We can use the spaceship operator `<=>` to relatively compare two values. 

Previously, we used the basic comparators of <, >, <=, >= to compare values, so what new behavior does the spaceship operator give us access to? Well, you can think of <=> as an operation we can use to combine all of those basic comparators into one.

# How it Works


The spaceship operator <=> is used between two values and will return -1, 0, or 1. The behavior is as follows:

* given the expression a <=> b
	* it will return -1 if a is less than b
	* it will return 0 if a is equal to b
	* it will return 1 if a is greater than b

