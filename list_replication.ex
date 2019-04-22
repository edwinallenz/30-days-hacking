defmodule ListReplication do
  def get_input do
    case IO.gets("") do
      :eof -> Process.exit(self(), :normal)
      data -> data |> String.trim |> String.to_integer
    end
  end

  def exec do
    get_input() |> get_no
  end
  def get_no(total) do
    get_input() |> print_no({total, total})
  end

  def print_no(_number, {total, 0}) do
    get_no(total)
  end
  def print_no(number, {total, left}) do
    IO.puts number
    print_no(number, {total, left - 1})
  end
  def exec_map do
    get_input() |> get_no_map
  end

  def get_no_map(count) do
    number = get_input()
    Enum.map(1..count, fn(_x) ->
      IO.puts(number)
    end)
    get_no_map(count)
  end
end

ListReplication.exec_map
