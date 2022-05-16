# frozen_string_literal: true

module CoingeckoRuby::Services::Contract
  class MarketChartInRange < CoingeckoRuby::Services
    def fetch(id, contract_address, vs_currency, fr