

lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "coingecko_ruby/version"

Gem::Specification.new do |spec|
  spec.name          = "coingecko_ruby"
  spec.version       = CoingeckoRuby::VERSION
  spec.authors       = ["wenjieyek"]
  spec.email         = ["dx3152@hotmail.com"]
