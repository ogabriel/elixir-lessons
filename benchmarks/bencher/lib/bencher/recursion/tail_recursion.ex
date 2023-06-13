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

  def double_numbers(list) do
    do_double_numbers(list, [])
  end

  defp do_double_numbers([head | tail], list) when is_number(head) do
    do_double_numbers(tail, [head | list])
  end

  defp do_double_numbers([_head | tail], list) do
    do_double_numbers(tail, list)
  end

  defp do_double_numbers([], list) do
    list
  end
end
