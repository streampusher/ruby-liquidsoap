require './lib/liquidsoap/telnet'

describe Liquidsoap::Telnet do
  it "connects to liquidsoap" do
    l = Liquidsoap::Telnet.new
    puts l.write("icecast.metadata")
  end
end
