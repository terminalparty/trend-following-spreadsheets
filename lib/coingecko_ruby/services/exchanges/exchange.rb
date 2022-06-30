# frozen_string_literal: true

module CoingeckoRuby::Services::Exchanges
  class Exchange < CoingeckoRuby::Services
    def fetch(id)
      output = super(CoingeckoRuby::Models::ApiLink.exchange_url(id))
      adapt(output)
    end

    def adapt(output)
      exchange = CoingeckoRuby::Models::Exchange.new
      exchange.name = output['name']
      exchange.year_established = output['year_established']
      exchange.country = output['country']
      exchange.description = output['description']
      exchange.url = output