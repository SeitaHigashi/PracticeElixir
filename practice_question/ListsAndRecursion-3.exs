defmodule MyList do
  def ceasar([], _), do: []
  def ceasar([head | tail], n), do: [_ceasar(head, n) | ceasar(tail, n)]

  defp _ceasar(c, n) when c + n > 122 do
    c + n - 26
  end
  defp _ceasar(c, n)do
    c + n
  end
end
