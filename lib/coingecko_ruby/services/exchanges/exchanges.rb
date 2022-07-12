# frozen_string_literal: true

module CoingeckoRuby::Services::Exchanges
  class Exchanges < CoingeckoRuby::Services
    def fetch
      output = super(CoingeckoRuby::Models::ApiLink.exchanges_url)
      adapt(output)
    end

    def adapt(output)
      exchanges = []

      output.each do |output|
        exchange = CoingeckoRu