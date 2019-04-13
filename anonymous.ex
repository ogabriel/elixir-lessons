# there is this thing in elixir called:
# anonymous functions, they are kinda like labmdas on ruby

sum = fn a, b -> a + b end
sum.(2, 3)
# a and b are the parameters
# its passed to a variable
# u can access by putting its variable and a dot, then you pass the arguments

# Shorthand version
sum = &(&1 + &2)
sum.(2, 3)
