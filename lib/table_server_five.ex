defmodule TableServerFive do
  use GenServer

  defp get_name(server_name) do
    {:global, {:servername, server_name}}
  end

  # ----------------------------------------- #
  # Client - API                              #
  # i.e. Client calls the following functions #
  # ----------------------------------------- #
  def start_link(start_number, server_name) do
    GenServer.start_link(__MODULE__, start_number, name: get_name(server_name))
  end

  def init(start_number) do
    {:ok, start_number}
  end

  def stop(server_name) do
    GenServer.stop(get_name(server_name))
  end

  def ping(server_name) do
    GenServer.call(get_name(server_name), :ping)
  end

  def pong(server_name) do
    GenServer.call(get_name(server_name), :pong)
  end

  # ----------------------------------------- #
  # Server - API                              #
  # i.e. Server calls the following functions #
  # ----------------------------------------- #
  def handle_call(:ping, _from, current_number) do
    {:reply, {:ok, current_number}, current_number+1}
  end

  def handle_call(:pong, _from, current_number) do
    {:reply, {:ok, current_number}, current_number+1}
  end

end
