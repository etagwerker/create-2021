GOOD = 'good'.freeze
BAD = 'bad'

t = Thread.new do
  puts "GOOD=#{GOOD}"
  puts "BAD=#{BAD}"
end

t.join