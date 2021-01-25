# This method accepts only a keyword argument
def foo(k: 1)
  p k
end

h = { k: 42 }

# This method call passes a positional Hash argument
# In Ruby 2.7: The Hash is automatically converted to a keyword argument
# In Ruby 3.0: This call raises an ArgumentError
foo(h)
  # => demo.rb:11: warning: Using the last argument as keyword parameters is deprecated; maybe ** should be added to the call
  #    demo.rb:2: warning: The called method `foo' is defined here
  #    42

# If you want to keep the behavior in Ruby 3.0, use double splat
foo(**h) #=> 42
