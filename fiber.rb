f = Fiber.new { puts 1; Fiber.yield; puts 2 }

f.resume
# 1
# => nil

f.resume
# 2
# => nil
