# frozen_string_literal: true

module CoingeckoRuby::Services::Simple
  class TokenPrice < CoingeckoRuby::Services
    def fetch(id, contract_addresses, vs_currencies, include_market_cap,
              include_24hr_vol, include_2