defmodule TableServerFive do
  use GenServer

  # ----------------------------------------- #
  # Client - API                              #
  # i.e. Client calls the following functions #
  # ----------------------------------------- #
  def start_link(start_number, server_name) do
    # Insert start_ink here
  end

  def init(start_number) do
    # Insert init here
  end

  def stop(server_name) do
    # Insert stop here
  end

  def ping(server_name) do
    # Insert ping here
  end

  def pong(server_name) do
    # Insert pong here
  end

  # ----------------------------------------- #
  # Server - API                              #
  # i.e. Server calls the following functions #
  # ----------------------------------------- #
  def handle_call(:ping, _from, current_number) do
    # Insert :ping handle_call here
  end

  def handle_call(:pong, _from, current_number) do
    # Insert :pong handle_call here
  end

end
