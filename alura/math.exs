defmodule MeuModulo.Math do
  # def soma(parametro1, parametro2), do: parametro1 + parametro2

  def soma(parametro1, parametro2) do
    parametro1 + parametro2
  end

  def zero?(0), do: true
  def zero?(num) when is_integer(num), do: false
end
