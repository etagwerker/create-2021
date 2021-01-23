case [17, 76]
in Integer => a, Integer => b
  puts "a=#{a}, b= #{b}"
else
  puts "not matched"
end

case {a: 1, b: 7, c: 76}
in a: Integer => m, b: Integer => n, c: Integer => o
  puts "m: #{m}, n: #{n}, o: #{o}, "
else
  "not matched"
end