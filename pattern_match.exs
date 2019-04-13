# the equal sign is no t really a equal is a match operator too
# much like the equal operator in algebra, really like it
x = 1
# 1
1 = 1
# 1
1 = x
# 1
2 = x
# ** (MatchError) no match of right hand side value: 1 ----  x was 1

# list try with lsit
list = [1, 2, 3]
# [1, 2, 3]
[1, 2, 3] = list
# [1, 2, 3] it reconized
[] = list
# ** (MatchError) no match of right hand side value: [1, 2, 3]
[1 | tail] = list
# [ 1, 2, 3]
tail
# [ 2, 3] what happened? on the match above, 1 mached 1, and tail matched/has given
# the rest of the values

# turples
{:ok, value} = {:ok, "Successful!"}
# {:ok, "Successful!"}
value
# "Successful!"
{:ok, value} = {:error}
# ** (MatchError) no match of right hand side value: {:error}

# PIN OPERATOR
# matchs to the value inside the variable, not the variable itself
# because in some case it could give a new value for the variable
x = 1
# 1
^x = 2
# ** (MatchError) no match of right hand side value: 2
# it was just like 1 = 2
{x, ^x} = {2, 1}
# {2, 1}
x
# 2 it is two now, because the first value of the turple, was assingned to
# x = 2, and the second was a match 1 = 1

# good example of the use of pin
foo = "kartofel"
bar = "kartofel"

case foo do
  ^bar ->
    IO.puts("Pinned! Matches")

  _ ->
    :ok
end
