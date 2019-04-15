defmodule GreetsEveryoneTest do
  use ExUnit.Case
  doctest GreetsEveryone

  test "greets the world" do
    assert GreetsEveryone.hello() == :world
  end
end
