# frozen_string_literal: true

module CoingeckoRuby::Services::Coins
  class Coin < CoingeckoRuby::Services
    def fetch(id, localization, tickers,
              