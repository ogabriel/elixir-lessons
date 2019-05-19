# ExDoc
# its the official elixir project, that products HTML and online
# docs to elixir projects

# simulation
# mix new greet_everyone
# puts some @docs or @docmodule somewhere (lib/file.ex)
# add the dependency :ex_doc to the project
[{:earmark, "~> 1.2", only: :dev}, {:ex_doc, "~> 0.19", only: :dev}]
# mix deps.get
# mix docs
# Docs successfully generated.
# View them at "doc/index.html".
# now you have some pages of the documentation
