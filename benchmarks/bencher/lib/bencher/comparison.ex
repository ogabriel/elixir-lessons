defmodule Bencher.Comparison do
  @behaviour Bencher.Base

  def run do
    Benchee.run(
      %{
        "Atom" => fn -> :foobar == :foobar end,
        "Integer" => fn -> 1000 == 1000 end,
        "String" => fn -> "foobar" == "foobar" end
      },
      memory_time: 5,
      formatters: [
        {Benchee.Formatters.Console, extended_statistics: true},
        {Benchee.Formatters.Markdown, file: "../comparison.md"}
      ]
    )
  end
end
