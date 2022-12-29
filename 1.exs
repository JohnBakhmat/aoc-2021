# Part 1
File.read!("1.txt")
|> String.split("\n")
|> Enum.map(&String.to_integer/1)
|> Enum.chunk_every(2, 1, :discard)
|> Enum.map(fn [a, b] -> b > a end)
|> Enum.count(& &1)
|> IO.inspect()

# Part 2
File.read!("1.txt")
|> String.split("\n")
|> Enum.map(&String.to_integer/1)
|> Enum.chunk_every(3, 1, :discard)
|> Enum.map(fn x -> Enum.sum(x) end)
|> Enum.chunk_every(2, 1, :discard)
|> Enum.map(fn [a, b] -> b > a end)
|> Enum.count(& &1)
|> IO.inspect()
