defmodule Greeter do

  def for(name, greeting) do
    fn
      (^name) -> "#{greeting} #{name}"
      (_) -> "I don't know you"
    end
  end

end

mr_valim = Greeter.for("Jose", "Hi!")
mr_valim2 = Greeter.for("Dave", "Hi!")

IO.puts(mr_valim.("Jose"))
IO.puts(mr_valim.("Dave"))


IO.puts(mr_valim2.("Jose"))
IO.puts(mr_valim2.("Dave")) 
