# if/2 and unless/2
# they are defined macros, not language contructs, you can find
# their implementation in the Kernel module
if String.valid?("hello") do
  "Valid string"
else
  "Invalid string"
end

# "Valid string"

if "a string value" do
  "Truthy"
end

# "Truthy"

unless is_integer("hello") do
  "Not an Int"
end

# "Not an Int"

# case/2
# when is necessary to match multiple patterns
case {:ok, "Hello World"} do
  {:ok, result} -> result
  {:error} -> "Uh no"
  _ -> "Catch all"
end

# the _ (underscore) is important, without it, and the failure
# to find a match, it will raise an error
# it is comparable to an else
case :even do
  :odd -> "Odd"
end

# ** (CaseClauseError) no case clause matching: :even
case :even do
  :odd -> "Odd"
  _ -> "Not Odd"
end

# "Not Odd"

# case/2 relies on pattern matching
# if you are gonna match agains an existing variable, you must use the ^/1 operator
pie = 3.14
# 3.14
case "cherry pie" do
  ^pie -> "Not so tasty"
  pie -> "I bet #{pie} is tasty"
end

# "I bet cherry pie is tasty"
# it matched pie because it giva the value "cherry pie" to the

# neat feature of case/2 with guard clauses
case {1, 2, 3} do
  {1, x, 3} when x > 2 ->
    "Will match"

  _ ->
    "Won't match"
end

# "Won't match"

# cond/`
# this is when you need to match coditions rather then values
# is much alike else fi or elsif
cond do
  2 + 2 == 5 ->
    "Not true"

  2 * 2 == 3 ->
    "neither"

  1 + 1 == 2 ->
    "This will"
end

# "This will"
cond do
  7 + 1 == 0 -> "Incorrect"
  true -> "Catch all"
end

# "Catch all"

# with/1
# the result before <- is the possible result for the code after <-
# when it matches, the var first & last, are given the value resultant
# from the Map code
user = %{first: "Sean", last: "Callan"}
# %{first: "Sean", last: "Callan"}
with {:ok, first} <- Map.fetch(user, :first),
     {:ok, last} <- Map.fetch(user, :last),
     do: last <> ", " <> first

# "Callan, Sean"

user = %{first: "1", last: "0"}

with {:ok, a} <- Map.fetch(user, :first),
     {:ok, b} <- Map.fetch(user, :last),
     do: a <> b

# "10"
# <- is associated from left to right
# it will ganerate errors if the code in <- fails
user = %{first: "doomspork"}
# %{first: "doomspork"}
with {:ok, first} <- Map.fetch(user, :first),
     {:ok, last} <- Map.fetch(user, :last),
     do: last <> ", " <> first

# :error

# there is also an do else,end syntax, but works differently

import Integer

m = %{a: 1, c: 3}

a =
  with {:ok, number} <- Map.fetch(m, :a),
       true <- is_even(number) do
    IO.puts("#{number} divided by 2 is #{div(number, 2)}")
    :even
  else
    :error ->
      IO.puts("We don't have this item in map")
      :error

    _ ->
      IO.puts("It is odd")
      :odd
  end

# :odd

# not testable

def create(params) do
  with dob <- parse_dob(params["dob"]),
       name <- parse_name(params["name"]) do
    %User{dob: dob, name: name}
  else
    err -> err
  end
end

# this two codes are alike, somehow
case Repo.insert(changeset) do
  {:ok, user} ->
    case Guardian.encode_and_sign(user, :token, claims) do
      {:ok, token, full_claims} ->
        important_stuff(token, full_claims)

      error ->
        error
    end

  error ->
    error
end

with {:ok, user} <- Repo.insert(changeset),
     {:ok, token, full_claims} <- Guardian.encode_and_sign(user, :token, claims) do
  important_stuff(token, full_claims)
end

# the code after <- is the code that will be executed first, and the code
# before is the possible result, if it matches, it continues
