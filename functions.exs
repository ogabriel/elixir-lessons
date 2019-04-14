# as elixir is an functional language, functions are the first class citizans

# anonymous
sum = fn a, b -> a + b end
sum.(2, 3)
# 5

# shorthand
# it continues with &1, &2, &3, &4, &5 ...
sum = &(&1 + &2)
sum.(2, 3)
# 5

# pattern matching
# it inst limited to just variables in Elixir, it can be applied to function
# signatures as well
# it uses pattern matching to check throguth all possible match options and
# select matching option and run

handle_result = fn
  {:ok, result} -> IO.puts("Handling fun...")
  {:ok, _} -> IO.puts("This would be never run as previous will be matched beforehand")
  {:error} -> IO.puts("An error has occurred")
end

handle_result.({:ok, 1})
# Handling fun...
# :ok
handle_result.({:ok, nil})
# Handling fun...
# :ok
handle_result.({:error})
# An error has occurred
# :ok

# Named functions
# can be defined within a module using the def keyword
# it can still be available to other modules for use
defmodule Batata do
  def hello(name) do
    "Hello, " <> name
  end
end

Batata.hello("World")
# "Hello, World"

# short version
# that even explains the with
defmodule Batata do
  def hello(name), do: "Hello, " <> name
end

# writing a length function

defmodule Length do
  def of([]), do: :error
  def of([_ | tail]), do: tail + 1
end

# doest not work, because collection + 1 dont do much
# now the example of the tutorial
defmodule Length do
  def of([]), do: 0
  def of([_ | tail]), do: of(tail) + 1
end

# function naming arity
# functions are named by a combination of name and arity
defmodule Foobar do
  def hello(), do: "Hello, anonymous"
  def hello(name), do: "Hello, " <> name
  def hello(name1, name2), do: "Hello, " <> name1 <> name2
end

# the most correct way to do that is
defmodule Foobar do
  def hello(name1 \\ "anonymous", name2 \\ "") do
    "Hello, " <> name1 <> " " <> name2
  end
end

# Functions pattern matching
# behind the scenes, functions are pattern matching the arguments they
# are called with

defmodule Greeter1 do
  def hello(%{name: person_name}) do
    IO.puts("Hello, " <> person_name)
  end
end

fred = %{
  name: "Fred",
  age: "95",
  favorite_color: "Taupe"
}

Greeter1.hello(fred)
# the reason for this behavior is that Elixir pattern-matches the argument
# that a function is called with against the arity the function is defined with
# it is simply doint this:
%{name: person_name} = %{name: "Fred", age: "95", favorite_color: "Taupe"}
# and because of that, person_name will be end up with "Fred" inside

# and if we wanna get the entire person map?
# we assign the entire map to its own var (person)
defmodule Greeter2 do
  def hello(%{name: person_name} = person) do
    IO.puts("Hello, " <> person_name)
    IO.inspect(person)
  end
end

# person = the entire map that is coming in
# its like this: %{name: person_name} = %{name: "Fred", age: "95", favorite_color: "Taupe"}
# but:  %{name: person_name} = ...
# but:  %{name: person_name} = person
# the contrary also works
# def hello(person = %{name: person_name}) do

# private functions
# when we dont want modules accessing a specific function we can make the function private
# can only be accessed by the own module
defmodule Greeter do
  def hello(name), do: phrase() <> name
  defp phrase, do: "Hello, "
end

Greeter.hello("Sean")
# "Hello, Sean"
Greeter.phrase()
# ** (UndefinedFunctionError) function Greeter.phrase/0 is undefined or private Greeter.phrase()

# guards
# once elixir has matched a function, any guards now will be tested
defmodule Greeter do
  def hello(names) when is_list(names) do
    names
    |> Enum.join(", ")
    |> hello
  end

  def hello(name) when is_binary(name) do
    phrase() <> name
  end

  defp phrase, do: "Hello, "
end

Greeter.hello(["Sean", "Steve"])
# "Hello, Sean, Steve"

# default args
# you can have defaults
defmodule Greeter do
  def hello(name, language_code \\ "en") do
    phrase(language_code) <> name
  end

  defp phrase("en"), do: "Hello, "
  defp phrase("es"), do: "Hola, "
end

Greeter.hello("Sean", "en")
# "Hello, Sean"

Greeter.hello("Sean")
# "Hello, Sean"

Greeter.hello("Sean", "es")
# "Hola, Sean"

# for multiple matching functions, you cant use different default_args in then
# instead you can have a head function

defmodule Greeter do
  def hello(names, language_code \\ "en")

  def hello(names, language_code) when is_list(names) do
    names
    |> Enum.join(", ")
    |> hello(language_code)
  end

  def hello(name, language_code) when is_binary(name) do
    phrase(language_code) <> name
  end

  defp phrase("en"), do: "Hello, "
  defp phrase("es"), do: "Hola, "
end

Greeter.hello(["Sean", "Steve"])
# "Hello, Sean, Steve"

Greeter.hello(["Sean", "Steve"], "es")
# "Hola, Sean, Steve"
