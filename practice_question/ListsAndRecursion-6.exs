defmodule MyList do
  def flatten([]), do: []
  def flatten(list) do
    _flatten(list,[]) |> Enum.reverse
  end

 defp _flatten([], pass), do: pass
 defp _flatten([head | tail], pass) when is_list(head) do
  _flatten(tail, _flatten(head, pass))
  end
  defp _flatten([head | tail], pass) do
    _flatten(tail, [head | pass])
  end
end
