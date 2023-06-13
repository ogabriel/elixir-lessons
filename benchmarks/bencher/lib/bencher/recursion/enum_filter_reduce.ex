defmodule Bencher.Recursion.EnumFilterReduce do
  def sum_numbers(list) do
    list
    |> Enum.filter(&is_number(&1))
    |> Enum.reduce(0, fn n, sum -> n + sum end)
  end
end
