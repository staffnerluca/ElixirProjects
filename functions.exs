defmodule Functions do
  def luggi?(1) do
    true
  end #? means it returns a boolean

  def luggi?(x) when is_integer(x) do
    false
  end

  
  def defaultVals(x \\ "my default") do
    x
  end

  def sumList([head | tail], accumulator \\ 0) do
    sumList(tail, head + accumulator)
  end

  def sumList([], accumulator) do
    accumulator
  end

  
  def plusOneList([head | tail]) do
    [head + 1 | plusOneList(tail)]
  end

  def plusOneList([]) do
    []
  end

  def double_each([head | tail]) do
    [head * 2 | double_each(tail)]
  end

  def double_each([]) do
    []
  end
end

IO.puts Functions.luggi?(1)
IO.puts Functions.sumList([1, 2, 3, 4, 5])
IO.puts Functions.plusOneList([1, 2, 3, 4, 5, 6])
IO.puts Functions.double_each([1, 2, 3])
