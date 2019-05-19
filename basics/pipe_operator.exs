# the |> passes the result of an expression as the first paramether of another expression
# this was made thinking that programming could get messy, so functions calls could get
# like this: foo(bar(baz(new_function(other_function()))))
# but in elixir u can write like this: other_function() |> new_function() |> baz() |> bar() |> foo()

# examples
"Elixir rocks" |> String.split()
# ["Elixir", "rocks"]
"Elixir rocks" |> String.upcase() |> String.split()
# ["ELIXIR", "ROCKS"]
"elixir" |> String.ends_with?("ixir")
# true

# best practices
# if the function arity is more the 1, then make sure to use the parentheses, not just for
# pipeline operator, but for others too
# and for pipeline this generates a warning
# "elixir" |> String.ends_with? "ixir"
# massive warning
# true
