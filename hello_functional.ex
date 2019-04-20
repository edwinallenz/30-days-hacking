defmodule HelloFunctional do
  def exec_with_map do
    Enum.map(1..get_input(), fn _ -> IO.puts "Hello World" end)
  end

  def exec_with_recursion(0), do: ""
  def exec_with_recursion(times) do
    IO.puts "Hello World"
    count = times - 1
    exec_with_recursion(count)
  end

  def recursion do
    exec_with_recursion(get_input())
  end

  def get_input do
    IO.gets("") |> String.trim |> String.to_integer
  end
end

HelloFunctional.recursion
