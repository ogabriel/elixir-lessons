# its common to extend you elixir app functionality by adding custom
# mix tasks
# for example
# mix phoenix.new my_phoenix_app
# as we can see, the phoenix framework has a custom mix task to generate
# a new project
#
# SETUP
# with a given project, go to the directory project/lib/mix/tasks
# and create a file: file.ex
# example:
defmodule Mix.Tasks.Hello do
  use Mix.Task

  @shortdoc "Simply runs the Hello.say/0 function"
  def run(_) do
    # calling Hello.say() function that shows "Hello, World!"
    Hello.say()
  end
end

# it generates a hello task
# mix hello
# "Hello, World!"
#
# @shortdoc
# its the description for the task when you call mix help
