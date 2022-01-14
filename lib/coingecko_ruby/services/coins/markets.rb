# frozen_string_literal: true

module CoingeckoRuby::Services::Coins
  class Markets < CoingeckoRuby::Services
    def fetch(vs_currency, ids, order, per_page, page,
              sparkline, price_c