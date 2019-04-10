# atoms
:foo
true |> is_atom
false |> is_atom
true |> is_boolean
# true

# exemple
is_atom(MyApp.MyModule)
# true

# crypto is a erlang library
:crypto.strong_rand_bytes(2)

2 == 2.0
# true
2 === 2.0
# false, because is coparing the types

# An important feature of Elixir is that any two types can be compared; this is particularly useful in sorting. We don’t need to memorize the sort order, but it is important to be aware of it:
# number < atom < reference < function < port < pid < tuple < map < list < bitstring

:hello > 999
# true
{:hello, :world} > [1, 2, 3]
# false

# concatenation
"Hello #{name}"
name = "Sean"
"Hello " <> name
