defmodule Bencher.Recursion.EnumReduce do
  def sum_numbers(list) do
    Enum.reduce(list, [], fn num, acc ->
      if is_number(num) do
        [num | acc]
      else
        acc
      end
    end)
  end
end
