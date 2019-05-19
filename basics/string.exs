# STRINGS
# elixir strings are nothing but a sequence of bytes
string = <<104, 101, 108, 108, 111>>
# "hello"
string <> <<0>>
# <<104, 101, 108, 108, 111, 0>>
# By concatenating the string with the byte 0, IEx displays the string as
# a binary because it is not a valid string anymore. This trick can help
# us view the underlying bytes of any string.
# NOTE: Using « » syntax we are saying to the compiler that the elements inside those symbols are bytes.

# CHARLIST
# elixir strings are represented with a sequence of bytes rather than an
# array of characters
# elixir strings are enclosed with double quotes
# chars, single quotes
# where is the differece? in the charlist, is the unicode point of a character
'hełło'
# [104, 101, 322, 322, 111]
# whereas in binary, the codepoints are encoded as utf8
"hełło" <> <<0>>
# <<104, 101, 197, 130, 197, 130, 111, 0>>
# you can get a character code point by using ?
?Z
# 90

# When we are really programming, we usually use strings, not charlists
# the charslist support is just available because it is required by some
# erlang modules
#
# GRAPHEMES AND CODEPOINTS
# Codepoints: simple Unicode characters which are represented by one or more bytes
# for things like: á, ñ etc(2 bytes) or japonese characters (3/4 bytes)
string = "\u0061\u0301"
# "á" # its constituited by 2 bytes

String.codepoints(string)
# ["a", "́"] # separated form

String.graphemes(string)
# ["á"] # together

# STRING FUNCTIONS
# lets review some of the most important and useful String funcitons

# LENGTH/1
# return the number of graphemes of the string
String.length("Hello")
# 5
#
# REPLACE/3
# returns a new string replacing the &2 arg for the &3
String.replace("Hello", "e", "a")
# "Hallo"
#
# DUPLICATE/2
# retuns a new string repeated a flew times
String.duplicate("Oh my", 3)
# "Oh myOh myOh my"
#
# SPLIT/2
# returns a new string split by a pattern
String.split("Hello World", " ")
# ["Hello", "World"]
