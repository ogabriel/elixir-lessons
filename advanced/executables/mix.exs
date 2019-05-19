defmodule MyApp.MixProject do
  use Mix.Project

  def project do
    [
      app: :my_app,
      version: "0.0.1",
      escript: escript
    ]
  end

  def escript do
    [main_module: MyApp.CLI]
  end
end

defmodule MyApp.CLI do
  def main(_args) do
    IO.puts("Hello from MyApp!")
  end
end

# defmodule ExampleApp.Mixfile do
#   def project do
#     [app: :example_app, version: "0.0.1", escript: escript()]
#   end

#   defp escript do
#     [main_module: ExampleApp.CLI]
#   end
# end

# defmodule ExampleApp.CLI do
#   def main(args \\ []) do
#     args
#     |> parse_args
#     |> response
#     |> IO.puts()
#   end

#   defp parse_args(args) do
#     {opts, word, _} =
#       args
#       |> OptionParser.parse(switches: [upcase: :boolean])

#     {opts, List.to_string(word)}
#   end

#   defp response({opts, word}) do
#     if opts[:upcase], do: String.upcase(word), else: word
#   end
# end
