defmodule TableServerTwo do
  use GenServer

  # ----------------------------------------- #
  # Client - API                              #
  # i.e. Client calls the following functions #
  # ----------------------------------------- #
  def start_link(_) do

  end

  def init(args) do
    {:ok, args}
  end

  def ping() do

  end

  # ----------------------------------------- #
  # Server - API                              #
  # i.e. Server calls the following functions #
  # ----------------------------------------- #
  def handle_call(:ping, _from, []) do
    {:reply, {:ok}, []}
  end
end
