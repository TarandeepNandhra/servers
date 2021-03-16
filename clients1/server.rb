require 'socket'

server = TCPServer.new(2345)

# waits for and accepts the client
socket = server.accept

while true
  socket.puts "HELLO CLIENT WHAT IS YOUR NAME?"
  name = socket.gets.chomp
  socket.puts "THAT'S A LOVELY NAME #{name}"
end

socket.close