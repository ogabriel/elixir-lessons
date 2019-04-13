# list are simple collectons of values which may include multiples types
[3.15, :pie, "three dot forteen"]

# Prepending (fast)
["π"] ++ list
# ["π", 3.14, :pie, "Apple"]

# Appending (slow)
list ++ ["Cherry"]

# head and tail
hd [3.14, :pie, "Apple"]
# 3.14
tl [3.14, :pie, "Apple"]
# [:pie, "Apple"]

# turples
{3.14, :pie, "Apple"}
# most used for pattern matching

# Associative collections
# keyword list - have atom keys, ordered, keys can be equal
[foo: "bar", hello: "world"]
[{:foo, "bar"}, {:hello, "world"}]
[foo: "bar", foo: "foo"]

# maps - any type of keys, unordered, dont allow duplicates (but wont give errors)
map = %{:foo => "bar", "hello" => :world}

key = "hello"
# "hello"
%{key => "world"}
# %{"hello" => "world"}
