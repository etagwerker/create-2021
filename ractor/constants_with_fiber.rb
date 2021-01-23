GOOD = 'good'.freeze
BAD = 'bad'

r = Fiber.new do
  puts "GOOD=#{GOOD}"
  puts "BAD=#{BAD}"
end

r.resume
