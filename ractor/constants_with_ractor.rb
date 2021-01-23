GOOD = 'good'.freeze
BAD = 'bad'

r = Ractor.new do
  puts "GOOD=#{GOOD}"
  puts "BAD=#{BAD}"
end

r.take
