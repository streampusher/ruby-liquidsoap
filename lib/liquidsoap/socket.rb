require 'socket'

module Liquidsoap
  class Socket
    def initialize(path)
      @socket = UNIXSocket.new(path)
    end
    def write(command)
      @socket.puts command
      line = ""
      result = ""
      until line.strip =~ /^END$/
        line = @socket.gets
        result << line
      end
      result
    end
  end
end
