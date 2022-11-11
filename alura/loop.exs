defmodule MeuModulo.Loop do
  def tabuada(multiplicador) do
    tabuada(multiplicador, 1)
  end

  defp tabuada(_, 11), do: []

  # defp tabuada(produto1, produto2) do
  #   IO.puts("#{produto1} * #{produto2} = #{produto1 * produto2}")
  #   tabuada(produto1, produto2 + 1)
  # end

  defp tabuada(produto1, produto2) do
    total = produto1 * produto2
    IO.puts("#{produto1} * #{produto2} = #{total}")
    [total | tabuada(produto1, produto2 + 1)]
  end
end
