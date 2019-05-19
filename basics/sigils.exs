# SIGISLS
# is an alternative syntax for representing and working with literals
# it always starts with a ~ (tide) followed by a character
# the core already come with some:
#
# ~C Generates a character list with no escaping or interpolation
# ~c Generates a character list with escaping and interpolation
# ~R Generates a regular expression with no escaping or interpolation
# ~r Generates a regular expression with escaping and interpolation
# ~S Generates a string with no escaping or interpolation
# ~s Generates a string with escaping and interpolation
# ~W Generates a word list with no escaping or interpolation
# ~w Generates a word list with escaping and interpolation
# ~N Generates a NaiveDateTime struct
#
# there is also a list of delimites:
# <>, {}, [], (), ||, //, "", ''
#
# char list
~c/2 + 7 = #{2 + 7}/
#'2 + 7 = 9'

~C/2 + 7 = #{2 + 7}/
# '2 + 7 = \#{2 + 7}'

# REGULAR EXPRESSIONS =~
# we can use them with Regex functions
re = ~r/elixir/
# ~r/elixir/
"Elixir" =~ re
# false # if it had a /i in the end, would work
"elixir" =~ re
# true

# Futher, elixir provides the Regex API, whitch is build on top of Erlang
# regular expressions library

# string
~s/welcome to elixir #{String.downcase "school"}/
#"welcome to elixir school"
~S/welcome to elixir #{String.downcase "school"}/
# "welcome to elixir \#{String.downcase \"school\"}"

# WORD LIST
# it may come handy because it saves time
~w/i love #{'e'}lixir school/
# ["i", "love", "elixir", "school"]
~W/i love #{'e'}lixir school/
# ["i", "love", "\#{'e'}lixir", "school"]

# NaiveDateTime
# quickly creates a struct that represents DateTime without timezone

NaiveDateTime.from_iso8601("2015-01-23 23:50:07") == {:ok, ~N[2015-01-23 23:50:07]

# CRATING SIGILS
# one of the main goals of elixir is to be an extendable programming language
# it lets you create your own custom sigils
# in this example, we will create one that converts the string to uppercase

defmodule MySigils do
  def sigil_u(string, []), do: String.upcase(string)
end

import MySigils

~u/elixir school/
# ELIXIR SCHOOL
