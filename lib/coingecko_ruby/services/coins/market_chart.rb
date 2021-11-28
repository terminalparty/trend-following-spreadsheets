# frozen_string_literal: true

module CoingeckoRuby::Services::Coins
  class MarketChart < CoingeckoRuby::Services
    def fetch(id, vs_currency, days)