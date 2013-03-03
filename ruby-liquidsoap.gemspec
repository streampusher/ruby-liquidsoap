# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "ruby-liquidsoap"
  s.version = "0.0.1.20130303010205"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Tony Miller"]
  s.date = "2013-03-03"
  s.description = "a ruby library for sending commands to liquidsoap via its telnet or socket \ninterface."
  s.email = ["mcfiredrill@gmail.com"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt"]
  s.files = ["Gemfile", "Gemfile.lock", "History.txt", "Manifest.txt", "README.md", "Rakefile", "lib/liquidsoap/telnet.rb", "lib/liquidsoap/socket.rb", "lib/liquidsoap.rb", "spec/liquidsoap/telnet.rb", "spec/liquidsoap/socket.rb", ".gemtest"]
  s.homepage = "http://github.com/datafruits/ruby-liquidsoap"
  s.rdoc_options = ["--main", "README.md"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "ruby-liquidsoap"
  s.rubygems_version = "1.8.25"
  s.summary = "a ruby library for sending commands to liquidsoap via its telnet or socket  interface."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rdoc>, ["~> 3.10"])
      s.add_development_dependency(%q<hoe>, ["~> 3.5"])
    else
      s.add_dependency(%q<rdoc>, ["~> 3.10"])
      s.add_dependency(%q<hoe>, ["~> 3.5"])
    end
  else
    s.add_dependency(%q<rdoc>, ["~> 3.10"])
    s.add_dependency(%q<hoe>, ["~> 3.5"])
  end
end
