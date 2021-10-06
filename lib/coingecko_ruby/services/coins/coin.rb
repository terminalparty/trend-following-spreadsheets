# frozen_string_literal: true

module CoingeckoRuby::Services::Coins
  class Coin < CoingeckoRuby::Services
    def fetch(id, localization, tickers,
              market_data, community_data, developer_data,
              sparkline)
      output = super(CoingeckoRuby::Models::ApiLink.coin_url(
        id, localization, tickers,
        market_data, community_data, developer_data,
        sparkline
      ))
      adapt(output)
    end

    def adapt(output)
      coin = CoingeckoRuby::Models::Coin.new
      coin.id = output['id']
      coin.symbol = output['symbol']
      coin.name = output['name']
      coin.block_time_in_minutes = output['block_time_in_minutes']
      coin.categories = output['categories']
      coin.localization = output['localization']
      coin.