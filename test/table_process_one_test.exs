defmodule TableProcessOneTest do
  use ExUnit.Case

  test "send a ping, process dies" do
    pid = TableProcessOne.start

    :timer.sleep(1)

    assert true == Process.alive?(pid)

    send(pid, :ping)
    :timer.sleep 1000
    send(pid, :ping)

    assert false == Process.alive?(pid)
  end
end
