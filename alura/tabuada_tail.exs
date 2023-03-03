defmodule MeuModulo.TabuadaTail do
  # uses tail recursion

  def calcula(multiplicador) do
    tabuada(multiplicador, 1, [])
  end

  defp tabuada(_, 11, valores), do: valores

  defp tabuada(produto1, produto2, valores) do
    tabuada(produto1, produto2 + 1, [produto1 * produto2] ++ valores)
  end
end
