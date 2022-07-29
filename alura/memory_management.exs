# variables are immutable on elixir, even if you do something like
var = 1
var = 2

# the first value (1) still exists on memory in the same address it was assigned
# and the second value (2) is another value, on another address, and "var" is pointing towards it
# this is good when passing variables between process, as the value won't need to be copied and don't have the
# possibility to be deleted if another thread is gonna use it
# so is very good for multitasking

# and when working with lists

list = [1, 2]
list = [ 3 | list ]

# as lists are more reliable than arrays, as they wont need copy when new things are added
