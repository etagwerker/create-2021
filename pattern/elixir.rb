def process(%{"animal" => animal}) do
  IO.puts("The animal is: #{animal}")
end

def process(%{"plant" => plant}) do
  IO.puts("The plant is: #{plant}")
end

def process(%{"person" => person}) do
  IO.puts("The person is: #{person}")
end