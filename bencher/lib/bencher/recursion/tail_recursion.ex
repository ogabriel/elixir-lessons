defmodule Bencher.Recursion.TailRecursion do
  def sum_numbers(list) do
    do_sum_numbers(list, 0)
  end

  defp do_sum_numbers([head | tail], sum) when is_number(head) do
    do_sum_numbers(tail, sum + head)
  end

  defp do_sum_numbers([_head | tail], sum) do
    do_sum_numbers(tail, sum)
  end

  defp do_sum_numbers([], sum) do
    sum
  end
end
