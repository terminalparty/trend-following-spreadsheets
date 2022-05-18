# frozen_string_literal: true

module CoingeckoRuby::Services::Contract
  class MarketChartInRange < CoingeckoRuby::Services
    def fetch(id, contract_address, vs_currency, from, to)
      output = super(CoingeckoRuby::Models::ApiLink.contract_market_chart_in_range_url(
       