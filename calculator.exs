defmodule Calculator do
  def readNumbers(x) when x > 0 do
    readNumbers(x, []) 
  end

  def readNumbers(0, inputs) do
    Enum.reverse(inputs)
  end

  def readNumbers(n, inputs) do
    IO.write("Enter input: ")
    input = IO.gets("") |> String.trim() |> String.replace("\n", "", global: true)
    intInp = String.to_integer(input)
    readNumbers(n-1, [intInp | inputs]) #creates new list with the new input at the beginning 
  end


  def outputNums([]) do
    IO.puts("#############")
  end
  
  def outputNums([head | tail]) do
    IO.puts(head)
    outputNums(tail)
  end 
 

  def plus(list) do
    plus(0, list)
  end

  def plus(n, []) do
    IO.puts(n)
  end

  def plus(n, [head | tail]) do
    plus(n+head, tail)
  end
  

  def minus([head | tail]) do
    plus(head, tail)
  end

  def minus(n, []) do
    IO.puts(n)
  end

  def minus(n, [head | tail]) do
    minus(n-head, tail)
  end
end


stNumOfNums = IO.gets("number of numbers: ") 
|> String.trim()
|> String.replace("\n", "", global: true)
IO.inspect(stNumOfNums)

numOfNum = String.to_integer(stNumOfNums)
lis = Calculator.readNumbers(numOfNum)
Calculator.outputNums(lis)
Calculator.plus(lis)
Calculator.minus(lis)
