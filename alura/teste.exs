defmodule MeuModulo do
  import IO, only: [puts: 1]
  import Kernel, except: [inspect: 1]

  def ola_mundo do
    puts("Olá, mundo!")
  end

  def inspect(parametro) do
    puts("começando")
    puts(parametro)
    puts("terminando")
  end
end

# iex teste.exs ou
# import_file "teste.exs"
# MeuModulo.ola_mundo
# r(MeuModulo)
