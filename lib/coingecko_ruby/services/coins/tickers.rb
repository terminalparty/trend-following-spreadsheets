# frozen_string_literal: true

module CoingeckoRuby::Services::Coins
  class Tickers < CoingeckoRuby::Services
    def fetch(id, exchange_ids, include_exchange_logo, page, order)
      output = super(CoingeckoRuby::Models::ApiLink.coin_tickers_url(
        id, exchange_ids, include_exchange_logo, page, orde