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
        exchange = CoingeckoRuby::Models::Exchange.new
        exchange.id = output['id']
        exchange.name = output['name']
        exchange.year_established = output['year_established']
        exchange.country = output['count