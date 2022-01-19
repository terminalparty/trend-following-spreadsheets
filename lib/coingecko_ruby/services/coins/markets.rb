# frozen_string_literal: true

module CoingeckoRuby::Services::Coins
  class Markets < CoingeckoRuby::Services
    def fetch(vs_currency, ids, order, per_page, page,
              sparkline, price_change_percentage)
      output = super(CoingeckoRuby::Models::ApiLink.coin_markets_url(
        vs_currency, ids, order, per_page, page,
        sparkline, price_change_percentage
      ))
      adapt(output)
    end

    def adapt(output)
      output.map do |output|
        coin = CoingeckoRuby::Models::Coin.new
        coin.id = output['id']
        coin.symbol = output['symbol']
