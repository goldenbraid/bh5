$:.push File.expand_path("../lib", __FILE__)
require "bh5/version"

Gem::Specification.new do |s|
  s.name        = "bh5"
  s.version     = Bh5::VERSION
  s.summary     = "An API wrapper for beathau5\'s JSON API"
  s.description = "An API wrapper for beathau5\'s JSON API"
  s.authors     = ["goldenbraid"]
  s.email       = ["jawn302@gmail.com"]
  s.homepage    = "http://github.com/goldenbrain/bh5"
  s.files       = Dir.glob "lib/*.rb"

  s.add_dependency "faraday"
  s.add_dependency "faraday-cookie_jar"

  s.add_development_dependency "cutest"
end
