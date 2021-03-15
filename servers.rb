require 'socket'

server = TCPServer.new(2345)

# First sever connection
socket = server.accept

socket.puts "What do you say?"

they_said = socket.gets.chomp

socket.puts "You said: #{they_said}. Goodbye!"

# Waits for another connection, first connection is not closed until socket.close
# Second terminal 
socket = server.accept

socket.puts "What do you say?"

they_said = socket.gets.chomp

socket.puts "You said: #{they_said}. Goodbye!"

# Both terminals close
socket.close