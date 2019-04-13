# there is a lot of enums in elixir
Enum.__info__(:functions)
|> Enum.each(fn {function, arity} ->
  IO.puts("#{function}/#{arity}")
end)

# this will show all the functions that it has
# and its arity, which is the number of arguments that a function takes
# as other languages, you can define a lot of functions with the same name
# normaly you can show that with function/1 (arity 1), function/2 (arity 2)

# using all?
# it will check everyvalue, if of one them evaluete to false, will fail
# it will check the values of the enum, on all?/1 will check if everything is
# not nil
# all?/2 will check the entire collection, and it must evaluete to true, by an
# function, otherwise it will return false
Enum.all?(["a", "b", "c"], fn s -> String.length(s) == 1 end)
# evaluetes to true

# any?
# on the first value that evaluetes to true, it will return true, if any of the
# values evalues to true, it will return false
Enum.any?(["a", "b", "c"], fn s -> String.length(s) == 1 end)
# true
Enum.any?(["a", "b", "c"], fn s -> s == "a" end)
# true
Enum.any?(["a", "b", "c"], fn s -> s == "d" end)
# false

# chunck_every/2(..4)
# will break your colleciton into smaller groups
# it has the chunk_every/3, the 3 arg will say the jumps for every cut (+1, +2 etc)
Enum.chunk_every([1, 2, 4, 5, 6, 10, 7, 8], 4)
# [[1, 2, 4, 5], [6, 10, 7, 8]]

Enum.chunk_every([1, 2, 4, 5, 6, 10, 7, 8], 4, 1)
# [
#   [1, 2, 4, 5],
#   [2, 4, 5, 6],
#   [4, 5, 6, 10],
#   [5, 6, 10, 7],
#   [6, 10, 7, 8],
#   '\n\a\b'
# ]

# chuck_by/2
# instead of normal args, it takes a function to generate
Enum.chunk_by(["one", "two", "three", "four", "five", "six"], fn x -> String.length(x) end)
# [["one", "two"], ["three"], ["four", "five"], ["six"]]

# map/2
# returns a collection
Enum.map(["foo", "bar", "fb"], fn s -> s <> "ab" end)
# ["fooab", "barab", "fbab"]

# map_every/3
# defines a interval to mapping
Enum.map_every([1, 2, 3, 4, 5, 6, 7, 8], 3, fn x -> x + 1000 end)
# [1001, 2, 3, 1004, 5, 6, 1007, 8]

# each/2
# interates to the collection without producing a value
Enum.each(["one", "two", "three"], fn s -> IO.puts(s) end)
# one
# two
# three
# :ok

# min/1 max/1
Enum.min([5, 3, 0, -1])
# -1
Enum.max([5, 3, 0, -1])
# 5

# min/2 max/2
# in the case of the enumerable is empty, you can specify a function to produce
# the minumum/maximum value, this works with the collecton with something too
Enum.min([], fn -> :foo end)
# :foo
Enum.max([], fn -> :bar end)
# :bar

# filter/2
# filter the collection to include only the elems that evaluates to true (fn)
Enum.filter([1, 2, 3, 4], fn x -> rem(x, 2) == 0 end)
# [2, 4]

# reduce/2
# distill the collection down into a single value
Enum.reduce([1, 2, 3], fn x, acc -> x + acc end)
# 6
# reduce/3 - just pass the acc on the third arg
Enum.reduce([1, 2, 3], 10, fn x, acc -> x + acc end)

# sort/1
Enum.sort([5, 6, 1, 3, -1, 4])
# [-1, 1, 3, 4, 5, 6]
# sort/2
Enum.sort([%{:val => 4}, %{:val => 1}], fn x, y -> x[:val] > y[:val] end)
# [%{val: 4}, %{val: 1}]

# uniq/1
Enum.uniq([1, 2, 3, 2, 1, 1, 1, 1, 1])
# [1, 2, 3]
# uniq_by/2
Enum.uniq_by([1, 2, 3, 2, 1, 1, 1, 1, 1], fn x -> x end)
# [1, 2, 3]
