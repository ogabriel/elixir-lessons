defmodule MeuModulo.Enum do
  def primeiro([]), do: nil
  def primeiro(lista), do: hd(lista)

  # def primeiro(lista) do
  #   if length(lista) == 0 do
  #     nil
  #   else
  #     hd(lista)
  #   end
  # end
end
