# frozen_string_literal: true

module CoingeckoRuby::Services::Coins
  class MarketChartInRange < CoingeckoRuby::Services
    def fetch(id, vs_currency, from, to)
      output = super(CoingeckoRuby::Models::ApiLink.coin_market_chart_in_range_url(
        id, vs_currency, from, to
      ))
      adapt(output)
    end

    def adapt(output)
      coin = CoingeckoRuby::Models::Coin.new
      coin.prices = output['prices']
      coin.market_c