defmodule BencherTest do
  use ExUnit.Case
  doctest Bencher

  test "greets the world" do
    assert Bencher.hello() == :world
  end
end
