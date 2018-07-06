prefix = fn str1 -> (fn str2 -> "#{str1} #{str2}" end ) end

hello = prefix.("Hello")

IO.puts(hello.("World"))
IO.puts(hello.("Seita"))
