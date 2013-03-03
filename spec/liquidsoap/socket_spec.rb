require './lib/liquidsoap/socket'

describe Liquidsoap::Socket do
  it "connects to liquidsoap" do
    l = Liquidsoap::Socket.new("/tmp/liquidsoap.sock")
    puts l.write("icecast.metadata")
  end
end
