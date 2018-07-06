func2 = fn
	(0, 0, _) -> "FizzBuzz"
	(0, _, _) -> "Fizz"
	(_, 0, _) -> "Buzz"
	(_, _, a) -> "#{a}"
end

IO.puts(func2.(0, 0, 0))
IO.puts(func2.(2, 0, 0))
IO.puts(func2.(0, 6, 0))
IO.puts(func2.(2, 6, 9))
