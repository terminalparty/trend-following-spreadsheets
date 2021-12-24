# frozen_string_literal: true

module CoingeckoRuby::Services::Coins
  class MarketChartInRange < CoingeckoRuby::Services
    def fetch(id, vs_currency, from, to)
      output = super(CoingeckoRuby::Models::ApiLink.coin_ma