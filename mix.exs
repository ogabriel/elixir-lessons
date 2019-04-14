# MIX
# mix is like bundler, RubyGems and rake combined
# you can use mix help to get help

# NEW PROJECTS
# mix new example
# will create the full boilerplate

# the file mix.exs is where we configure our application, dependencies, environment, and version.

# INTERACTIVE
# it may be necessary to use iex within the context of the application
# loading your applicaiton and dependencias into the current runtime
# iex -S mix

# COMPILATION
# mix is smart and will compile everythings whem its necessary, but it may be needed to
# explicity compile your project
# mix compile
# will compile your base directory to the _build directory

# MANANGE DEPENDENCIES
# to add dependencies we first need to add it to mix.esx in the deps
# example

# phoenix slim
def deps do
  [
    {:phoenix, "~> 1.1 or ~> 1.2"},
    {:phoenix_html, "~> 2.3"},
    {:cowboy, "~> 1.0", only: [:dev, :test]},
    {:slime, "~> 0.14"}
  ]
end

# the cowboy dependency is only necessary at the dev and test
# mix deps.get
# gets all the dependencies

# ENVIROMENTS
# there are enviroments :dev, :test (mix test) and :prod
# MIX_ENV=prod mix compile
