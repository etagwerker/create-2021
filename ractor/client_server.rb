# example taken from: https://docs.ruby-lang.org/en/3.0.0/Ractor.html

server = Ractor.new do
  puts "Server starts: #{self.inspect}"
  puts "Server sends: ping"

  # The server doesn't know the receiver and sends to whoever interested
  Ractor.yield 'ping'

  # The server doesn't know the sender and receives from whoever sent
  received = Ractor.receive

  puts "Server received: #{received}"
end

client = Ractor.new(server) do |srv|
  # The server is sent inside client, and available as srv
  puts "Client starts: #{self.inspect}"

  # The Client takes a message specifically from the server
  received = srv.take
  puts "Client received from " \
       "#{srv.inspect}: #{received}"
  puts "Client sends to " \
       "#{srv.inspect}: pong"

  # The client sends a message specifically to the server
  srv.send 'pong'
end

[client, server].each(&:take) # Wait till they both finish