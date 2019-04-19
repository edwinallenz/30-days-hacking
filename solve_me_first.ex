defmodule SolveMeFisrt do
  #Enter your code here. Read input from STDIN. Print output to STDOUT
  def exec do
    first = IO.gets("") |> String.trim |> String.to_integer
    second = IO.gets("") |> String.trim |> String.to_integer
    IO.puts(first + second)
  end
end
SolveMeFisrt.exec

