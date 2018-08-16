defmodule MyEnum do

  def all?([], _), do: true
  def all?([ head | tail], func), do: func.( head ) and all?(tail, func)

  def each([], _), do: :ok
  def each([ head | tail ], func) do
    func.(head)
    each( tail, func)
  end

  def filter([], _), do: []
  def filter([head | tail], func) do
    if func.(head) do
      [head | filter(tail, func)]
    else
      filter(tail, func)
    end
  end

#  def split([], _), do: []
#  def split( enumerable, count) do
#    {_split(enumerable, count)}
#  end
#  def _split([], _), do: []
#  def _split([ head | tail], count) when count < 0 do

#  end
#  def _split([ head | tail], count) do
#    []
#  end
end
