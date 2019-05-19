# raise a normal error
raise "batata"
# ** (RuntimeError) batata

# raise a know error
raise ArgumentError, message: "batata"
# ** (ArgumentError) batata

# try/rescue
try do
  raise "batata"
rescue
  e in RuntimeError -> IO.puts(e.message)
end

# multiple errors
try do
  opts
  |> Keyword.fetch!(:source_file)
  |> File.read!()
rescue
  # run something if the error appears
  e in KeyError -> IO.puts("missing :source_file option")
  e in File.Error -> IO.puts("unable to read source file")
  e in CompileError -> IO.puts("opts does not exist")
end

# after keyword
# regardless of the error, the after code will run
try do
  raise "batata"
rescue
  e in RuntimeError -> IO.puts("rescue")
after
  IO.puts("after")
end

# most of the use
{:ok, file} = File.open("example.json")

try do
  # Do hazardous work
after
  File.close(file)
end

# creating my own errors
defmodule FooError do
  defexception message: "foobarinzho meu "
end

try do
  raise FooError
rescue
  e in FooError -> e
end

# Throws
# throw is "catched"
try do
  for x <- 0..10 do
    if x == 5, do: throw(x)
    IO.puts(x)
  end
catch
  x -> "caught #{x}"
end

# its quite uncommon its use, but exist as stopgaps when libraries fail to provide adequate APIs

# exit
# the exit signals occor whenever a process dies and are an important part of the fault tolerance of elixir
# exit/1 can be used explicitly
spawn_link(fn -> exit("oh no") end)

# normally is advantegeos to let the supervisor handle the process to exit
try do
  exit("oh no!")
catch
  :exit, _ -> "exit blocked"
end

# "exit blocked"
