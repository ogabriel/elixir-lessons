defmodule MeuModulo do
  import IO, only: [puts: 1]
  import Kernel, except: [inspect: 1]

  alias MeuModulo.Math, as: MyMath

  def ola_mundo do
    inspect(MyMath.soma(1, 2))
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
