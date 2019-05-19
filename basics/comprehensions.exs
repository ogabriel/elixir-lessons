# COMPREHENSIONS
# List comprehensions are syntatic sugar for looping through enumerables in
# elixir
#
# BASIC
# it can be used to produce more concise statements for Enum and Stream interation
list = [1, 2, 3, 4, 5]
# [1, 2, 3, 4, 5]
for x <- list, do: x * x
# [1, 4, 9, 16, 25]
# we are actually using a for and an `generator`
# which is x<-[1,2,3,4,4] expressions found in the list of comprehensions
# they are responsible for generating the next value

# you can even use pattern matching
values = [good: 1, good: 2, bad: 3, good: 4]
for {:good, n} <- values, do: n * n
# [1, 4, 16]
#
# filters:
multiple_of_3? = fn n -> rem(n, 3) == 0 end
for n <- 0..5, multiple_of_3?.(n), do: n * n
# [0, 9] # its because comprehensions discart all the values which the filter
# expression returns false or nil, all the orders are selected
#
# multple filters
import Integer
for x <- 1..100, is_even(x), rem(x, 3) == 0, do: x
# [6, 12, 18, 24, 30, 36, 42, 48, 54, 60, 66, 72, 78, 84, 90, 96]
#
# multiple generators:
list = [1, 2, 3, 4]

for n <- list, times <- 1..n do
  String.duplicate("*", times)
end

# ["*", "*", "**", "*", "**", "***", "*", "**", "***", "****"]

for n <- list, times <- 1..n, do: IO.puts("#{n} - #{times}")
# 1 - 1
# 2 - 1
# 2 - 2
# 3 - 1
# 3 - 2
# 3 - 3
# 4 - 1
# 4 - 2
# 4 - 3
# 4 - 4

# INTO
# what if we want to produce something different than a list?
# :into accepts any structure that implements the Callectable protocol
# creating a map from a keyword
for {k, v} <- [one: 1, two: 2, three: 3], into: %{}, do: {k, v}
# %{one: 1, three: 3, two: 2}

for c <- [72, 101, 108, 108, 111], into: "", do: <<c>>
# "Hello"
