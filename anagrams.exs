defmodule Anagram do
  def anagram?(a, b) when is_binary(a) and is_binary(b) do
    sort_string(a) == sort_string(b)
  end

  defp sort_string(word) do
    word
    |> String.downcase()
    |> String.graphemes()
    |> Enum.sort()
  end
end

Anagram.anagram?("super", "repus")
