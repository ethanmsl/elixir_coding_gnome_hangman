defmodule CoreHangmanTest do
  use ExUnit.Case
  doctest CoreHangman

  test "greets the world" do
    assert CoreHangman.hello() == :world
  end
end
