defmodule HelloWorld do
  #Enter your code here. Read input from STDIN. Print output to STDOUT
  def main do
    IO.puts("Hello, World.")
    IO.gets("") |> String.trim() |> IO.puts()
  end
end

HelloWorld.main

