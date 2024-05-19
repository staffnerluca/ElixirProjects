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
    minus(head, tail)
  end

  def minus(n, []) do
    IO.puts("The result is: #{n}")
  end

  def minus(n, [head | tail]) do
    minus(n-head, tail)
  end
  

  def multiply(list) do
    multiply(1, list)
  end

  def multiply(n, []) do
    IO.puts("The result is: #{n}")
  end

  def multiply(n, [head | tail]) do
    multiply(n * head, tail)
  end


  def divide([head | tail]) do
    divide(head, tail)
  end

  def divide(n, []) do
    IO.puts("The result is: #{n}")
  end

  def divide(n, [head | tail]) do
    divide(n/head, tail)
  end


  def calculate(lis, sign) do
    cond do
      sign == "+" ->
        calculate(0, lis, sign)
      sign == "*" ->
        calculate(1, lis, sign)
      sign == "-" or sign == "/" ->
        calculate(hd(lis), tl(lis), sign)
    end
  end


  def calculate(n, [], _sign) do
    IO.puts "The result is #{n}"
  end

  def calculate(n, [head | tail], sign) do
    cond do
      sign == "+" ->
        calculate(n+head, tail, sign)
      sign == "-" ->
        calculate(n-head, tail, sign)
      sign == "*" ->
        calculate(n*head, tail, sign)
      sign == "/" ->
        calculate(n/head, tail, sign)
    end
  end
end


stNumOfNums = IO.gets("number of numbers: ") 
|> String.trim()
|> String.replace("\n", "", global: true)

numOfNum = String.to_integer(stNumOfNums)
lis = Calculator.readNumbers(numOfNum)
#Calculator.outputNums(lis)
type = IO.gets("+; -; *; /: ")
|> String.trim() 
|> String.replace("\n", "", global: true)
IO.inspect(type) 
cond do
  type == "+" ->
    Calculator.plus(lis)
  type == "-" ->
    Calculator.minus(lis)
  type == "*" ->
    Calculator.multiply(lis)
  type == "/" ->
    Calculator.divide(lis)
end  
IO.puts("#########################")
Calculator.calculate(lis, type)
