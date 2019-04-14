# ANNOTATION
# elixir treats doc as a first class citizen offering various functions to access and
# generate docs
#
# there are 3 ways to do it:
# # - for inline documentation
# @moduledoc - for module-level- documentation
# @doc - for function-level documentation
#
# INLINE - elixir will ignore everythings fro # to the end of the line,
# treating it as throwaway data
#
# DOCUMENTING MODULES -
# typically is just under the defmodule declaration

defmodule Greeter do
  @moduledoc """
  Provides a function `hello/1` to greet a human
  """

  def hello(name) do
    "Hello, " <> name
  end
end

# use c("file.exs", ".") or c("user.ex")
# then you can use h Greeter to see the doc

# DOCUMENTING FUNCTIONS
# the @doc annotator sits just above the function it is annotating
defmodule Greeter do
  @moduledoc """
  ...
  """

  @doc """
  Prints a hello message

  ## Parameters

    - name: String that represents the name of the person.

  ## Examples

      iex> Greeter.hello("Sean")
      "Hello, Sean"

      iex> Greeter.hello("pete")
      "Hello, pete"

  """
  def hello(name) do
    "Hello, " <> name
  end
end

# c("greeter.ex"
# h Greeter.hello

# you can markup lang within our doc and the terminal will render it?

# BEST PRACTICES
# when you are adding documentations, it should be added within the best practices possble
#
# rules:
# - always document a module
# - if you dont intent do document a module, do not leave it blank, consider annotating false
defmodule Greeter do
  @moduledoc false
end

# - when reffering to functions within module documentation, always use ``
# because of the markup
defmodule Greeter do
  @moduledoc """
  ...

  This module also has a `hello/1` function.
  """

  def hello(name) do
    IO.puts("Hello, " <> name)
  end
end

# - always put one line under the @moduledoc
# - user markdown within docs, it will make it easier to read at IEx or ExDoc
# - try to include some examples in your documentation, it also enables you to generated
# automated tests from the code examples in the module, function or macro, with ExUnit.DocTest
