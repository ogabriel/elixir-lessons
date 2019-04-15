# The IEx is your best friend
# there are many advanced features that can make your life easier
#
# AUTOCOMPLETE
# You can just type MOduleName. TAB and it will be show the functions within that module
#
# iex.exs
# everytime iex starts, it will look for .iex.exs config file, probaly its
# in ~/iex.exs the fallback one, or on the current director
# you can create this in your directory
defmodule IExHelpers do
  def whats_this?(term) when is_nil(term), do: "Type: Nil"
  def whats_this?(term) when is_binary(term), do: "Type: Binary"
  def whats_this?(term) when is_boolean(term), do: "Type: Boolean"
  def whats_this?(term) when is_atom(term), do: "Type: Atom"
  def whats_this?(_term), do: "Type: Unknown"
end

# at the IEx you can do that now:
IExHelpers.whats_this?(nil)
# "Type: Nil"
IExHelpers.whats_this?("a string")
# "Type: Binary"
#
# H
# due to the fantastic documentation support that elixir gives,
# any code can be reached by using this helper
# h h # gives help for himself
# h i
# h Enum.any?
# h Enum
#
# I
# gives information about the given datatype
# like whre it is compiled (dir)
# i Map
#
# R
# if you want to recompile an particular module
# like if we added new info, and want to recompile it
# r MyModule
#
# T
# it show the types available in a given module
# t Map
# @type key() :: any()
# @type value() :: any()
