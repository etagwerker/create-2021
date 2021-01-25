# This method accepts one positional argument and a keyword rest argument
def bar(h, **kwargs)
  p h
end

# This call passes only a keyword argument and no positional arguments
# In Ruby 2.7: The keyword is converted to a positional Hash argument
# In Ruby 3.0: This call raises an ArgumentError
bar(k: 42)
  # => demo2.rb:9: warning: Passing the keyword argument as the last hash parameter is deprecated
  #    demo2.rb:2: warning: The called method `bar' is defined here
  #    {:k=>42}

# If you want to keep the behavior in Ruby 3.0, write braces to make it an
# explicit Hash
bar({ k: 42 }) # => {:k=>42}
