defmodule PowersetTest do
  use ExUnit.Case

  test "powerset_bits" do
    expected = [[], [1], [2], [1, 2], [3], [1, 3], [2, 3], [1, 2, 3]]
    actual = Powerset.powerset_bits([1, 2, 3])
    assert expected == actual
  end

  test "powerset_append" do
    expected = [[1, 2, 3], [1, 2], [1, 3], [1], [2, 3], [2], [3], []]
    actual = Powerset.powerset_append([1, 2, 3])
    assert expected == actual
  end

  test "powerset_prepend" do
    expected = [[1], [1, 3], [1, 2, 3], [1, 2], [2], [2, 3], [3], []]
    actual = Powerset.powerset_prepend([1, 2, 3])
    assert expected == actual
  end
end
