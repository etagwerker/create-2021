start = Time.now

Thread.new do # in this thread, we'll have non-blocking fibers
  Fiber.set_scheduler Scheduler.new

  %w[2.6 2.7 3.0].each do |version|
    Fiber.schedule do # Runs block of code in a separate Fiber
      t = Time.now
      # Instead of blocking while the response will be ready, the Fiber
      # will invoke scheduler to add itself to the list of waiting fibers
      # and transfer control to other fibers
      Net::HTTP.get('rubyreferences.github.io', "/rubychanges/#{version}.html")
      puts '%s: finished in %.3f' % [version, Time.now - t]
    end
  end
end.join # At the END of the thread code, Scheduler will be called to dispatch
         # all waiting fibers in a non-blocking manner

puts 'Total: finished in %.3f' % (Time.now - start)

# Prints:
#  2.6: finished in 0.139
#  2.7: finished in 0.141
#  3.0: finished in 0.143
#  Total: finished in 0.146