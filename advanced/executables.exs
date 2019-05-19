# EXECUTABLES
# to build executables, its used escript
# this allows to a executable be run on any system with erlang installed

# to create a executable with escript, two things are needed
# implement a main/1 and add this to the mix file
#
defmodule ExampleApp.Mixfile do
  def project do
    [app: :example_app, version: "0.0.1", escript: escript()]
  end

  defp escript do
    [main_module: ExampleApp.CLI]
  end
end

# exampleapp.cli
defmodule ExampleApp.CLI do
  def main(args \\ []) do
    # Do stuff
  end
end

# to build
# mix escript.build
