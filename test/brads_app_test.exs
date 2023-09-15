defmodule BradsAppTest do
  use ExUnit.Case
  doctest BradsApp

  test "greets the world" do
    assert BradsApp.hello() == :world
  end
end
