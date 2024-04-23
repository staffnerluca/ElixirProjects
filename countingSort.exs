defmodule CountingSort do
  def sort(list) when is_list(list) do
    max_value = Enum.max(list)
    min_value = Enum.min(list)
    
    #creates counting array by inserting 0 from min to max value
    counts = Enum.map(min_value..max_value, fn _ -> 0 end)
    
    #increases the number of the counting list at the right spot 
    Enum.each(list, fn x -> counts[x - min_value] = counts[x - min_value] + 1 end)

    sorted = Enum.flat_map(0..(max_value - min_value), fn i -> List.duplicate(i + min_value, counts[i]) end)

    sorted
  end
end

unsorted_list = [4, 2, 2, 8, 3, 3, 1]
sorted_list = CountingSort.sort(unsorted_list)
IO.inspect(sorted_list)
