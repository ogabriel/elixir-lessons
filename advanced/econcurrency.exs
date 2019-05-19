# CONCURRENCY
# one of the selling poings of Elixir is his suport for concurrency
# this is done thanks to the erlang VM (BEAM)
# the concurrency model relies on Actors, a contained process that communicates with other process through message passing
#
# ACTOR - fundamental unit of computation
#   allowerd operations:
#   - create another actor
#   - send a message
#   - designate how to handle the next message
#
#   have its own private state ;
#   use less memory than threads
#   dont share memory
#   have its own tape, which stores his next actions
#   - you can only communicate with another actor through a tape
#   - FIFO order
#   assynconous
#
# Fault tolerance
# actors, have supervisors, supervisors have top supervisors etc.
# supervisors can restart an actor, health it etc.

# PROS
# easy to sca;le
# fault tolerance
# geographical distribution
# no shared state
#
# CONS
# actors are susceptible to deadlocsk
# overflow of tape (mailbox)
# conceptual
#
# GETTING BACK TO ELIXIRSCHOLL
# PROCESES
# In th Erlang VM they are lightweight and run across all CPUs, like threads, but simplier
# spawn creates a process, and returns its PID

spawn(Example, :add, [2, 3])
# PID<0.80.0>

# Message passing
# to communicate, the process rely on message pasing, their main components to this: send/2 and receive functions
# this allow us to send messages to PID, to listen we use receive to match messages, if there is no match, the execution continues

defmodule Example do
  def listen do
    receive do
      {:ok, "hello"} -> IO.puts("World")
    end

    listen
  end
end

pid = spawn(Example, :listen, [])

send(pid, {:ok, "hello"})
# World
# {:ok, "hello"}

send(pid, :ok)
# :ok

# listen/0 is recursive, this allow our process to handle multiple messages,
# without this, our process would exit after reading the first message

# PROCESS LINKING
# the problem with spawn is knowing when a process crashes
defmodule Example do
  def explode, do: exit(:kaboom)
end

spawn(Example, :explode, [])
# PID<0.66.0>

spawn_link(Example, :explode, [])
# ** (EXIT from #PID<0.57.0>) evaluator process exited with reason: :kaboom
#
# TRAP
# maybe its needed to make the current process dont crash the current one, for that we can use Process.flag/2
# when the process reaches his exit, exit signals will be received as a turple {:EXIT, from_pid, reason}
defmodule Example do
  def explode, do: exit(:kaboom)

  def run do
    Process.flag(:trap_exit, true)
    spawn_link(Example, :explode, [])

    receive do
      {:EXIT, from_pid, reason} -> IO.puts("Exit reason: #{reason}")
    end
  end
end

Example.run()
# Exit reason: kaboom
# :ok
#
# PROCESS MONITORING
# what if we dont want to link processors, but still kept informed about his whereabouts?

defmodule Example do
  def explode, do: exit(:kaboom)

  def run do
    Process.flag(:trap_exit, true)
    spawn_link(Example, :explode, [])

    receive do
      {:EXIT, from_pid, reason} -> IO.puts("Exit reason: #{reason}")
    end
  end
end

Example.run()
# Exit reason: kaboom
# :ok
#
# AGENTS
# they are the abstraction around background process maintainging states
#  we can access then from other processes within our application node
{:ok, agent} = Agent.start_link(fn -> [1, 2, 3] end)
# {:ok, #PID<0.65.0>}
Agent.update(agent, fn state -> state ++ [4, 5] end)
# :ok
Agent.get(agent, & &1)
# [1, 2, 3, 4, 5]

# we can give a name too
Agent.start_link(fn -> [1, 2, 3] end, name: Numbers)
# {:ok, #PID<0.74.0>}

Agent.get(Numbers, & &1)
# [1, 2, 3]
#
# TASKS
# they provide a way to execute a function in the background and retrieve its return value later
# Can be really useful with expensive oprations without blocking applicaiton execution
defmodule Example do
  def double(x) do
    :timer.sleep(2000)
    x * 2
  end
end

task = Task.async(Example, :double, [2000])
# %Task{pid: #PID<0.111.0>, ref: #Reference<0.0.8.200>}

Task.wait(task)
# 4000
