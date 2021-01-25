case ["a", 1, "b", "c", 2, "d", "e", "f", 3]
in [*pre, String => x, String => y, *post]
  p pre  #=> ["a", 1]
  p x    #=> "b"
  p y    #=> "c"
  p post #=> [2, "d", "e", "f", 3]
end