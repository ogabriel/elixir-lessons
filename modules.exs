# allow us to organize functions into a namespace. In addition to that, they
# allow us to define named and private functions

defmodule Example do
  def greeting(name) do
    "Hello #{name}."
  end
end

Example.greeting("Sean")
# "Hello Sean."

# You can even nest modules, allowing to futher namespace your functionality
defmodule Example.Greetings do
  def morning(name) do
    "Good morning #{name}."
  end

  def evening(name) do
    "Good night #{name}."
  end
end

Example.Greetings.morning("Sean")
# "Good morning Sean."

# module attributes
# are commonly used as constants
defmodule Example do
  @greeting "Hello"

  def greeting(name) do
    ~s(#{@greeting} #{name}.)
  end
end

# there are names that you cant give them: moduledoc, doc, behavior

# structs
# they are a special maps with a defined set and default values
# they must be defined within a module, whitch will take its name from
# its very commom to a stuct be the only thing defined within a module
defmodule Example.User do
  defstruct name: "Aka", roles: []
end

%Example.User{}
# %Example.User{name: "Aka", roles: []}
%Example.User{name: "name"}
# %Example.User{name: "name", roles: []}
%Example.User{name: "name", roles: ["batata", "foobar"]}
# %Example.User{name: "name", roles: ["batata", "foobar"]}

# update struch
steve = %Example.User{name: "Steve"}
sean = %{steve | name: "Sean"}

# you can also allow just some fields to be show
defmodule Example.User do
  @derive {Inspect, only: [:name]}
  defstruct name: nil, roles: []
end

# Example.User<name: "name", ...>

# COMPOSITOIN
# a couple of different ways to a module interact with others

# ALIAS
# allow us to alias module names, used quite frequently
defmodule Sayings.Greetings do
  def basic(name), do: "Hi, #{name}"
end

# with alias
defmodule Example do
  alias Sayings.Greetings
  def greeting(name), do: Greetings.basic(name)
end

# without alias
defmodule OtherExample do
  def greeting(name), do: Sayings.Greetings.basic(name)
end

# if there is a conflig between two or more alias or
# just thw wish to use a different name, you can use :as option
defmodule Example do
  alias Sayings.Greetings, as: Hi

  def print_message(name), do: Hi.basic(name)
end

# you can even put multiples modules at once
defmodule Example do
  alias Sayings.{Greetings, Fareways}
end

# IMPORT
# instead of aliasing the module, we can import his functions
last([1, 2, 3])
# ** (CompileError) iex:9: undefined function last/1
import List
# nil
last([1, 2, 3])
# 3

# filter IMPORT
# by default all functions and macros are imported, but its possible to
# filter than by using :only and :except
# we have to specify [name: arity] of the functions
import List, only: [last: 1]
first([1, 2, 3])
# ** (CompileError) iex:13: undefined function first/1
last([1, 2, 3])
# 3

# in addition to that
# there are two special atoms, :function and :macros, whitch import just one of them
import List, only: :functions

import List, only: :macros

# REQUIRE
# this tells that you are gonna use macros from other module
# the differece between it and import, is that import for functions and require for macros
defmodule Example do
  require SuperMacros

  SuperMacros.do_stuff()
end

# using macros not loaded, will raise an error

# USE
# the use macro we can enable another module to modify our current module definition
# when we use use in our code, actually we are invoking the __using__/1 callback defined
# by the providing module, the result of it, becomes part of our module definition

defmodule Hello do
  defmacro __using__(_opts) do
    quote do
      def hello(name), do: "Hi, #{name}"
    end
  end
end

defmodule Example do
  use Hello
end

Example.hello("Sean")
# "Hi, Sean"
# hello is available in the Example module

# more powerful example
defmodule Hello do
  defmacro __using__(opts) do
    greeting = Keyword.get(opts, :greeting, "Hi")

    quote do
      def hello(name), do: unquote(greeting) <> ", " <> name
    end
  end
end

defmodule Example do
  use Hello, greeting: "Hola"
end

Example.hello("Sean")
# "Hola, Sean"
# use is a power tool, you will learn that with time
# one example you’re sure to see is use ExUnit.Case, async: true.
# Note: quote, alias, use, require are a macro used when we work with metaprogramming.
