defmodule MyList do
  def max([head | tail]), do: _max(tail, head)

  defp _max([], value), do: value
  defp _max([head | tail], value) when head < value do
    _max(tail, value)
  end
  defp _max([head | tail], value) when head > value do
    _max(tail, head)
  end
end
