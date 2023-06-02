defmodule Bencher.Recursion.BodyRecursion do
  def sum_numbers([head | tail]) when is_number(head) do
    sum_numbers(tail) + head
  end

  def sum_numbers([_head | tail]) do
    sum_numbers(tail)
  end

  def sum_numbers([]) do
    0
  end
end
