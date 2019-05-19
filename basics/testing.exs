# TESTING
#
# ExUnit
# its a builtin test framework, that includes everythings we need to thoroughly test
# our code
# they are implemented as elixir scripts (.exs)
# we start the ExUnit with ExUnit.start(), this is mostly commonly done in test/test_helper.exs
# when you do mix new project, it creates automatically a test, which you can run with
# mix test
# on that case, elixir also tested the doctest
defmodule GreetsEveryoneTest do
  use ExUnit.Case
  doctest GreetsEveryone

  test "greets the world" do
    assert GreetsEveryone.hello() == :world
  end
end

# Finished in 0.05 seconds
# 1 doctest, 1 test, 0 failures
#
# TEST TOOLS
#
# ASSERT
# its like should or expect
# we can use the assert macro to test that the expression is true
# if its not, an error will be raised and our tests will be fail
# 1) doctest GreetsEveryone.hello/0 (1) (GreetsEveryoneTest)
#    test/greets_everyone_test.exs:3
#    Doctest failed
#    code:  GreetsEveryone.hello() === :batata
#    left:  :world
#    right: :batata
#    stacktrace:
#      lib/greets_everyone.ex:11: GreetsEveryone (module)

# REFUTE
# the contrary of assert, expects to be false

# ASSERT_RAISE
# sometimes it may be necessary to assert that an error has been raised

# ASSERT_RECCEIVE
# in elixir apps consist of actors/processes that send messages to each other
# thus they often wanto to test the message being sent
# since ExUnit runs in its own process, it can receive messages just like any other process
# its a macro too
defmodule SendingProcess do
  def run(pid) do
    send(pid, :ping)
  end
end

defmodule TestReceive do
  use ExUnit.Case

  test "receives ping" do
    SendingProcess.run(self())
    assert_received :ping
  end
end

# it does not wait for messages

# CAPTURE_IO AND CAPTURE_LOG
# capture an app output is possible with ExUnit.CaptureIO
# without changing the original app, simply pass the funciton generating the output
defmodule OutputTest do
  use ExUnit.Case
  import ExUnit.CaptureIO

  test "outputs Hello World" do
    assert capture_io(fn -> IO.puts("Hello World") end) == "Hello World\n"
  end
end

# the capture_log is the equivalent for capturing output to logger

# TEST SETUP
# some instances it may be necessary to perform setup before our tests
# to accomplish this, we can use the setup and setup_all macros
# SETUP; will be run before each test
# SETUP_ALL: once before the whole suite
# it is expeted that they return the turpel of {:ok, state}
# and the state will be available to our tests
defmodule ExampleTest do
  use ExUnit.Case
  doctest Example

  setup_all do
    {:ok, recipient: :world}
  end

  test "greets", state do
    assert Example.hello() == state[:recipient]
  end
end

# MOCKING
# the simple answer to mock in elixir is: DONT
# you may be search for a mock, but they are very discouraged in the community
#
# REASON: http://blog.plataformatec.com.br/2015/10/mocks-and-explicit-contracts/
