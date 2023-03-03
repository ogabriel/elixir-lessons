defmodule MeuModulo.Tabuada do
  def calcula(multiplicador) do
    tabuada(multiplicador, 1)
  end

  def tabuada(_, 11), do: []

  def tabuada(produto1, produto2 = 1) do
    [produto1 * produto2 | tabuada(produto1, produto2 + 1)]
  end
end
