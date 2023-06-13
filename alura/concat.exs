defmodule MeuModulo.Concat do
  def join(string_a, string_b \\ nil, separator \\ " ")

  def join(string_a, string_b, separator) when is_nil(string_b) do
    string_a
  end

  def join(string_a, string_b, separator) do
    string_a <> separator <> string_b
  end
end
