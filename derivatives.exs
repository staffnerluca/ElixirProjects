def derive() do
  :ok
end


def derive(term, "") do
  #look for power
  #look for number in front of power
  #multiplying the number and the power
  #reducing the power by 1
end


def get_derivative(term) do
  derive(term, "")
end


term = IO.gets "Geben Sie den Term ein, den Sie ableiten wollen: "
dNum = IO.gets "Zu welchem Grad wollen Sie ableiten? "
IO.puts "#{term} und #{dNum}"
get_derivative(term, dNum)
