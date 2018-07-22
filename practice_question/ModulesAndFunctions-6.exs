defmodule Chop do
  def guess(actual, range) do
    min..max = range
    now = div(min+max, 2)
    IO.puts("Is it #{now}")
    helper(actual, range, now)
  end

  def helper(actual, _range, now) when actual == now do
    IO.puts(now)
  end

  def helper(actual, range, now) when actual < now do
    min.._ = range
    range = min..(now-1)
    now = div(min+now-1, 2)
    IO.puts("Is it #{now}")
    helper(actual, range, now)
  end

  def helper(actual, range, now) when actual > now do
    _..max = range
    range = (now+1)..max
    now = div(max+now+1, 2)
    IO.puts("Is it #{now}")
    helper(actual, range, now)
  end

end
