defmodule Tutorial do
  def hello_world() do
    IO.puts("Hello my World")
  end

  def test() do
    a = div(5, 2)
    IO.puts(a)
  end

  def atoms() do
    #atoms are variables with there own names as values
    :myAtom
  end

  def some_list_things() do
    #normal linked list, immutable
    a = [1, :atomi, "ein string darf nicht fehlen", 1.0]
    a = a -- [1, :atomi]
    Enum.each(a, fn x -> IO.puts(x) end)
  end

  def print_tuple({}) do
    :ok
  end

  def print_tuple(tup) do
    IO.puts(elem(tup, 0))
    {_, rest} = Tuple.delete_at(tup, 0)
    print_tuple(rest)
  end

  def some_things_about_tuples() do
    tup = {"hello", 1.0}
    print_tuple(tup)
    IO.puts(tuple_size(tup))
    Tupple.append(tup, 1, "hier wird ein Element an der Stelle 1 eingefügt und ein neues tupel zurück gegeben, das originale wird nicht modifiziert")
  end
end

Tutorial.hello_world()
Tutorial.test()
IO.puts(Tutorial.atoms()) #outputs value/name of the atom
Tutorial.some_list_things()
Tutorial.some_things_about_tuples()
