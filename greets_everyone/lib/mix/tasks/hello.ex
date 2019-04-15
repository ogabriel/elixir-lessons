defmodule Mix.Tasks.Hello do
  @moduledoc """
    This is a task that i am testing how it works
  """

  use Mix.Task

  @shortdoc ""

  def run(_) do
    GreetsEveryone.hello()
  end
end
