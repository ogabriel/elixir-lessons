defmodule MeuModulo.TabuadaBody do
  # uses body recursion

  def calcula(multiplicador) do
    tabuada(multiplicador, 1)
  end

  defp tabuada(_, 11), do: []

  defp tabuada(produto1, produto2) do
    [produto1 * produto2 | tabuada(produto1, produto2 + 1)]
  end
end
