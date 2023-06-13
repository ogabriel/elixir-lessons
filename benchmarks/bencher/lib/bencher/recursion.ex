defmodule Bencher.Recursion do
  alias Bencher.Recursion

  @behaviour Bencher.Base

  def run do
    Benchee.run(
      %{
        "Body recursion" => fn input -> Recursion.BodyRecursion.sum_numbers(input) end,
        "Tail recursion" => fn input -> Recursion.TailRecursion.sum_numbers(input) end,
        "Enum.reduce" => fn input -> Recursion.EnumReduce.sum_numbers(input) end,
        "Enum.filter + Enum.reduce" => fn input ->
          Recursion.EnumFilterReduce.sum_numbers(input)
        end
      },
      inputs: inputs(),
      memory_time: 5,
      formatters: [
        {Benchee.Formatters.Markdown, file: "../recursion.md"}
      ]
    )
  end

  def inputs do
    %{
      "Small" => inputs_small(),
      "Medium" => inputs_medium(),
      "Big" => inputs_big()
    }
  end

  defp inputs_small do
    letters = Enum.map(?a..?z, fn x -> <<x::utf8>> end)
    numbers = Enum.to_list(0..100)
    Enum.shuffle(letters ++ numbers)
  end

  defp inputs_medium do
    letters = Enum.map(?a..?z, fn x -> <<x::utf8>> end)
    numbers = Enum.to_list(0..1000)
    Enum.shuffle(letters ++ numbers)
  end

  defp inputs_big do
    letters = Enum.map(?a..?z, fn x -> <<x::utf8>> end)
    numbers = Enum.to_list(0..10000)
    Enum.shuffle(letters ++ numbers)
  end
end
