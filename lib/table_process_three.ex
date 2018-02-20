defmodule TableProcessThree do
  def ping do
    receive do
      # insert send
    end
    ping()
  end

  # insert pong

  def start do
    spawn(__MODULE__, :ping, [])
  end
end
