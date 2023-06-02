defmodule Bencher.Base do
  @callback inputs() :: map()
  @callback run() :: any()
end
