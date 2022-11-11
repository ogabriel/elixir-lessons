defmodule MeuModulo.Calendario do
  # def abreviacao_dia_semana(dia_semana) do
  #   case dia_semana do
  #      :segunda -> "Seg"
  #      :terca -> "Ter"
  #      _ -> "dia invalido"

  #   end
  # end

  # def abreviacao_dia_semana(dia_semana) do
  #   cond do
  #     dia_semana == :segunda -> "Seg"
  #     dia_semana == :terca -> "Seg"
  #     true -> "dia invalido"
  #   end
  # end

  def abreviacao_dia_semana(:segunda), do: "Seg"
  def abreviacao_dia_semana(:terca), do: "Ter"
  def abreviacao_dia_semana(:quarta), do: "Quar"
  def abreviacao_dia_semana(_), do: "dia invalido"
end
