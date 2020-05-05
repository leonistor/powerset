defmodule Powerset do
  use Bitwise

  @moduledoc """
  Powerset function implementations.
  """

  def powerset_bits(list) do
    n = length(list)
    max = round(:math.pow(2, n))

    for i <- 0..(max - 1) do
      for pos <- 0..(n - 1), band(i, bsl(1, pos)) != 0 do
        Enum.at(list, pos)
      end
    end
  end

  def powerset_append([]), do: [[]]

  def powerset_append([h | t]) do
    pt = powerset_append(t)
    for(x <- pt, do: [h | x]) ++ pt
  end

  def powerset_prepend([]), do: [[]]

  def powerset_prepend([h | t]) do
    pt = powerset_prepend(t)
    powerset_prepend(h, pt, pt)
  end

  defp powerset_prepend(_, [], acc), do: acc
  defp powerset_prepend(x, [h | t], acc), do: powerset_prepend(x, t, [[x | h] | acc])
end
