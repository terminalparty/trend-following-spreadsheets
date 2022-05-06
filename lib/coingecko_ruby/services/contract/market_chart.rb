# frozen_string_literal: true

module CoingeckoRuby::Services::Contract
  class MarketChart < CoingeckoRuby::Services
    def fetch(id, contract_address, vs_currency, days)
      output = super(CoingeckoRuby::Models::ApiLink.contract_market_chart_url(
        id, contract_addre