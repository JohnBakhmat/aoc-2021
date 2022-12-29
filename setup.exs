Enum.to_list(3..25)
|> Enum.map(fn x ->
  File.touch!("#{x}.exs")
  File.touch!("#{x}.txt")
end)
