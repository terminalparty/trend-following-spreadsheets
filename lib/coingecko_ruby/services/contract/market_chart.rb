# frozen_string_literal: true

module CoingeckoRuby::Services::Contract
  class MarketChart < CoingeckoRuby::Services
    def fetch(id, contract_address, vs_currency, days)
      output = super(Coing