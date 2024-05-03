defmodule CharFinder do
  
  def findChar() do
    -1
  end

  def findChar(term, num) do
    :ok
  end
end

term = "3^3+5*2"
searchFor = ?^
output = String.to_charlist(term)

IO.puts Integer.to_string(hd(output))

