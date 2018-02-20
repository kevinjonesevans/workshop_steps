defmodule TableProcessTwo do
  def ping do
    receive do
      :ping -> IO.puts('received ping')
    end
    # insert recursion
  end

  def start do
    spawn(__MODULE__, :ping, [])
  end
end
