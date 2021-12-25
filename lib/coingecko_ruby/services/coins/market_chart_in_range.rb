# frozen_string_literal: true

module CoingeckoRuby::Services::Coins
  class MarketChartInRange < CoingeckoRuby::Services
    def fetch(id, vs_currency, from, to)
      output = super(CoingeckoRuby::Models::ApiLink.coin_market_chart_in_range_url(
        id, vs_curr