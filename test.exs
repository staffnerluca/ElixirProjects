numOfNums = IO.gets("number of numbers: ") 
|> String.trim()
|> String.replace("\n", "", global: true)
|> String.to_integer()
IO.puts numOfNums + 10

"""
test = 0
test = 1
IO.puts test

{a, b} = {"hello", "world"}
IO.puts(a)
IO.puts b
[a, b] = ["f", "u"]
IO.puts a
IO.puts b
"""
