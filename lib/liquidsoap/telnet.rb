require 'net/telnet'

module Liquidsoap
  class Telnet
    def initialize(host="localhost",port=1234)
      @telnet = Net::Telnet.new("Host" => host,
                                "Port" => port)
    end
    def write(command)
      result = ""
      @telnet.puts(command)
      @telnet.waitfor("Match" => /^END$/) do |data|
        result << data
      end
      result
    end
  end
end
