# frozen_string_literal: true

module CoingeckoRuby::Services::Coins
  class MarketChart < CoingeckoRuby::Services
    def fetch(id, vs_currency, days)
      output = super(CoingeckoRuby::Models::ApiLink.coin_market_chart_url(
        id, vs_currency, days
