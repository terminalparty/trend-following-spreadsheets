# frozen_string_literal: true

module CoingeckoRuby::Services::Coins
  class Coin < CoingeckoRuby::Services
    def fetch(id, localization, tickers,
              market_data, community_data, developer_data,
              sparkline)
      output = super(CoingeckoRuby::Models::ApiLink.coin_url(
